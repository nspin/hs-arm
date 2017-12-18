{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

module MnemGroups
    ( Mnemonic
    , EncodingIdSuffix
    , insnsGrouped
    , insnsFlat
    ) where

import Harm.Types.Pattern

import ARM.MRAS

import Control.Lens
import Data.Bits
import Data.Foldable
import Data.Function
import Data.List
import Data.Maybe
import Data.Monoid
import Data.Word

type Mnemonic = String
type EncodingIdSuffix = String

insnsGrouped :: [(Mnemonic, [(EncodingIdSuffix, Pattern, [DiagramField])])]
insnsGrouped = map f
    . groupBy ((==) `on` (view _1))
    $ sortBy (compare `on` (view _1)) insnsFlat
  where
    f flat@((mnem, _, _, _):_) = (mnem, map g flat)
    g (_, suffix, patt, fields) = (suffix, patt, fields)

insnsFlat :: [(Mnemonic, EncodingIdSuffix, Pattern, [DiagramField])]
insnsFlat = (base ++ fpsimd)^..traverse.insn_classes.traverse._1.to fromClass.traverse

fromClass :: Class -> [(Mnemonic, EncodingIdSuffix, Pattern, [DiagramField])]
fromClass Class{..} = map f _class_encodings
  where
    f Encoding{..} = (mnem, rest, patt, diagramFields _class_diagram)
      where
        patt = compile (map _block_spec (bindDiagram _class_diagram _encoding_diagram))
        (mnem, tplt) = splitMnem _encoding_template
        Just (_:rest) = stripPrefix mnem _encoding_id

splitMnem :: String -> (String, String)
splitMnem = span (not . flip elem (" .{" :: String))

namedBlocks :: [Block] -> [(String, BlockSpec)]
namedBlocks = catMaybes . map f
  where
    f (Block n bs) = (, bs) <$> n


compile :: [BlockSpec] -> Pattern
compile = go 32 [] []
  where
    go 0 pos neg [] = Pattern (fold pos) neg
    go hi pos neg (BlockEq  bits : rest) = go (hi - length bits) (toAtom hi bits : pos) neg rest
    go hi pos neg (BlockNeq bits : rest) = go (hi - length bits) pos (toAtom hi bits : neg) rest

toAtom :: Int -> [Bit] -> Atom
toAtom hi bits = Atom
    (f (map (== I) bits))
    (f (map (/= X) bits))
  where
    f = flip shiftL (hi - length bits) . encode

encode :: [Bool] -> Word32
encode = foldl' f 0
  where
    f acc False = shiftL acc 1
    f acc True  = shiftL acc 1 .|. 1


mnemonics :: [String]
mnemonics = nub $ map (fst . splitMnem) templates

templates :: [String]
templates = sort $ (base ++ fpsimd) ^.. traverse.classes.class_encodings.traverse.encoding_template
  where
    classes = insn_classes.traverse._1 <> insn_aliases.traverse.alias_class


-- distilled :: [(EncodingInfo2, [EncodingInfo2])]
-- distilled = map f stitched
--   where
--     f (insn, aliases) = (g insn, map g aliases)
--     g (encid, mnem, patt) = case stripPrefix mnem encid of
--         Just ('_':rest) -> (mnem, rest, patt)

-- stitched :: [(EncodingInfo1, [EncodingInfo1])]
-- stitched = go insnEncodings aliasEncodings
--   where
--     go insns [] = map (, []) insns
--     go (insn:insns) aliases = (insn, good) : go insns bad
--       where
--         (good, bad) = partition (isAliasOf (view _1 insn) . view _1) aliases

-- isAliasOf :: EncodingId -> EncodingId -> Bool
-- isAliasOf insn alias = reverse ('_':insn) `isPrefixOf` reverse alias
