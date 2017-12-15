module ARM.MRAS.Parse.Internal.Tidy
    ( tidyPage
    , IsDiagram
    ) where

import ARM.MRAS.Types
import ARM.MRAS.Parse.Internal.Distill (C(..), AliasInfo(..), Mapping(..), TableEntry(..))
import qualified ARM.MRAS.Parse.Internal.Distill as D

import Control.Applicative
import Control.Exception
import Control.Lens
import Data.Foldable
import Data.Maybe

import Debug.Trace

tidyPage :: IsDiagram diag => D.Page -> Either (InsnFromWith diag PageId ()) (PageId, AliasFrom diag ())
tidyPage (D.Page pid ainfo xclasses expls pss) = mk (map f xclasses)
  where
    mk classes = case ainfo of
        AliasList apids -> Left (Insn pid () apids classes pss)
        AliasTo apid -> case (classes, pss) of
            ([(clazz, [])], []) -> Right (apid, Alias pid () clazz)
    f (D.Class cid marchvar isa diagform (D.Diagram psname boxes) xencs psss)
        = (Class cid marchvar psname diag encs, psss)
      where
        diag = tidyDiagram isa diagform boxes
        encs = map g xencs
        g (D.Encoding eid bxs (tmp:_)) = Encoding eid (tidySubDiagram bxs) tmp syms -- TODO(nspin) TI block templates (see adc_r.xml)
          where
            syms =
                [ case mm of
                    Account x _ -> Symbol ss x Nothing
                    Definition x tbl -> Symbol ss x (Just (tidyTable ss tbl))
                | D.Explanation eids ss mm <- expls
                , eid `elem` eids
                ]

stripAngleBrackets :: String -> String
stripAngleBrackets ('<':xs) = case reverse xs of
    '>':ys -> reverse ys

tidyTable :: String -> D.Table -> Table
tidyTable osym (D.Table hd bdy) = assert check $ Table bfs tbdy
  where
    tbdy = map r bdy
    (hasarch, bfs) = case reverse hd of
        TableEntry D.Entry_class_symbol (Left "Architectural Feature") : rest -> (True, f rest)
        rest -> (False, f rest)
      where
        f (TableEntry D.Entry_class_symbol (Left sym) : rest) = assert (sym == osym) $ map g rest
        g (TableEntry D.Entry_class_bitfield (Left bf)) = bf
    r row = TableRow sval bval archvar
      where
        (archvar, (TableEntry D.Entry_class_symbol (Left sval) : rest)) = case (hasarch, reverse row) of
            (False, res) -> (Nothing, res)
            (True, TableEntry D.Entry_class_feature (Right archvar) : res) -> (Just archvar, res)
            (True, TableEntry D.Entry_class_feature (Left "") : res) -> (Nothing, res)
        bval = map f rest
        f (TableEntry D.Entry_class_bitfield (Left bs)) = map h bs
        h '1' = I
        h '0' = O
        h 'x' = X
    check = all (== length bfs) [ length bb | TableRow ss bb _ <- tbdy ]
        && homog [ map length bb | TableRow ss bb _ <- tbdy ]

homog :: Eq a => [a] -> Bool
homog [] = True
homog (a:as) = all (== a) as

allUnique :: Eq a => [a] -> Bool
allUnique [] = True
allUnique (a:as) = elem a as || allUnique as


class IsDiagram diag where
    getBlocks :: diag -> [Block]
    tidyDiagram :: D.ISA -> D.Regdiagram_form -> [D.Box] -> diag

instance IsDiagram DiagramAArch64 where
    getBlocks (DiagramA64 blocks) = blocks
    tidyDiagram D.A64 D.Regdiagram_form_32 = DiagramA64 . tidyBoxes 32

instance IsDiagram DiagramAArch32 where
    getBlocks (DiagramA32 blocks) = blocks
    getBlocks (DiagramT32 _ blocks) = blocks
    tidyDiagram D.A32 D.Regdiagram_form_32 = DiagramA32 . tidyBoxes 32
    tidyDiagram D.T32 D.Regdiagram_form_16 = DiagramT32 T32Width16 . tidyBoxes 16
    tidyDiagram D.T32 D.Regdiagram_form_16x2 = DiagramT32 T32Width32 . tidyBoxes 32

tidyBoxes :: Int -> [D.Box] -> [Block]
tidyBoxes len boxes = trace (show boxes) $ check `assert` blocks
  where
    blocks = go 32 (map tidyBox boxes)
    go n [] | n == 32 - len = []
    go n (Box hi width bl@(Block name spec) : bxs) = (n == hi + 1 && specLength spec == width) `assert` (bl : go (n - width) bxs)
    check = allUnique (catMaybes [ n | Block n _ <- blocks ])

tidySubDiagram :: [D.Box] -> [BlockUpdate]
tidySubDiagram sub = [ BlockUpdate hi lo spec | Box hi lo (Block _ spec) <- map tidyBox sub ]

-- narrowSpec super sub
narrowSpec :: BlockSpec -> BlockSpec -> BlockSpec
narrowSpec (BlockEq as) (BlockEq bs) = BlockEq (zipBits narrowBit as bs)
narrowSpec (BlockEq as) neq@(BlockNeq bs) = assert (length as == length bs && all ((==) X) as) neq
narrowSpec (BlockNeq as) (BlockNeq bs) = BlockNeq (zipWith narrowBit as bs)

zipBits :: (Bit -> Bit -> Bit) -> [Bit] -> [Bit] -> [Bit]
zipBits _ [] [] = []
zipBits f (a:as) (b:bs) = f a b : zipBits f as bs

narrowBit :: Bit -> Bit -> Bit
narrowBit I X = I
narrowBit O X = O
narrowBit X I = I
narrowBit X O = O
narrowBit X X = X

specLength :: BlockSpec -> Int
specLength spec = length $ case spec of
    BlockEq y -> y
    BlockNeq y -> y

data Box = Box Int Int Block

tidyBox :: D.Box -> Box
tidyBox box@(D.Box hi width name cs) = Box hi width (Block name (assert check spec))
  where
    spec = case cs of
        [] -> error $ "empty: " ++ show box
        [(C w "")] -> assert (w == width) $ BlockEq (replicate w X)
        cs -> fromJust $ asum
                [ BlockEq <$> traverse (with f) cs
                , BlockNeq <$> traverse (with g) cs
                , BlockNeq <$> h cs
                ]

    with x (C 1 val) = x val
    with _ _ = Nothing

    f "1" = Just I
    f "0" = Just O
    f "x" = Just X
    f "(1)" = Just I -- ?
    f "(0)" = Just O -- ?
    f "" = Just X
    f _ = Nothing

    g "Z" = Just O
    g "N" = Just I
    g "z" = Just O -- ?
    g "" = Just X
    g _ = Nothing

    h [C w ('!':'=':' ':xs)] = (w == length xs) `assert` traverse (f . (:[])) xs
    h _ = Nothing

    check = trace (show (name, width, spec)) $ width == specLength spec
