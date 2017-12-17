{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

module Extract
    ( encodingGroups
    , encodingInfo
    ) where

import Harm.Types

import ARM.MRAS

import Control.Exception
import Control.Lens hiding (List)
import Data.Bits
import Data.Function
import Data.Foldable
import Data.Function
import Data.List
import Data.Monoid
import Data.Word
import Debug.Trace

-- (template, diagram, [(mnemonic, encoding id, file)])
encodingGroups :: [(String, [(String, Encoding, String)])]
encodingGroups = map reduce . groupBy ((==) `on` view _1) . sortBy (lengthFirst `on` view _1) $ concatMap flatten everything
  where
    reduce grp@(g:rp) = (g^._1, map f grp)
      where
        f (_, m, i, f) = (m, i, f)

lengthFirst :: Ord a => [a] -> [a] -> Ordering
lengthFirst x y = case compare (length x) (length y) of
    EQ -> compare x y
    c -> c

flatten :: Insn -> [(String, String, Encoding, String)]
flatten Insn{..} = flip concatMap (map fst _insn_classes) $ \Class{..} ->
    -- keep class in scope this level because binding diagrams may be necessary later
    flip map _class_encodings $ \enc@Encoding{..} ->
        let (mnem, tplt) = splitMnem _encoding_template
        in ( tplt
           , mnem
           , enc
           , _insn_file
           )

encodingInfo :: [(Mnemonic, [(String, Pattern)])]
encodingInfo = map f (groupBy ((==) `on` (view _1 . fst)) (sortBy (compare `on` (view _1 . fst)) distilled))
  where
    f insn@(((mnem, _, _), _):_) = (mnem, map g insn)
    g ((_, id, patt), _) = (id, patt)

type Mnemonic = String
type EncodingInfo1 = (EncodingId, Mnemonic, Pattern)
type EncodingInfo2 = (Mnemonic, String, Pattern)

everything :: [Insn]
everything = base ++ fpsimd

distilled :: [(EncodingInfo2, [EncodingInfo2])]
distilled = map f stitched
  where
    f (insn, aliases) = (g insn, map g aliases)
    g (encid, mnem, patt) = case stripPrefix mnem encid of
        Just ('_':rest) -> (mnem, rest, patt)

stitched :: [(EncodingInfo1, [EncodingInfo1])]
stitched = go insnEncodings aliasEncodings
  where
    go insns [] = map (, []) insns
    go (insn:insns) aliases = (insn, good) : go insns bad
      where
        (good, bad) = partition (isAliasOf (view _1 insn) . view _1) aliases

isAliasOf :: EncodingId -> EncodingId -> Bool
isAliasOf insn alias = reverse ('_':insn) `isPrefixOf` reverse alias

insnEncodings, aliasEncodings :: [EncodingInfo1]
insnEncodings = everything^..traverse.insn_classes.traverse._1.to fromClass.traverse
aliasEncodings = everything^..traverse.insn_aliases.traverse.alias_class.to fromClass.traverse

fromClass :: Class -> [EncodingInfo1]
fromClass Class{..} = map (f _class_diagram) _class_encodings
  where
    f blocks Encoding{..} = (_encoding_id, fst (splitMnem _encoding_template), patt)
      where
        patt = compile (map _block_spec (bindDiagram blocks _encoding_diagram))

mnemonics :: [String]
mnemonics = nub $ map (fst . splitMnem) templates

splitMnem :: String -> (String, String)
splitMnem = span (not . flip elem " .{")

templates :: [String]
templates = sort $ everything ^.. traverse.classes.class_encodings.traverse.encoding_template
  where
    classes = insn_classes.traverse._1 <> insn_aliases.traverse.alias_class

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
