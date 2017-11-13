{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StandaloneDeriving #-}

module Test
    ( test
    ) where

import IO
import Distill as L
import Structure as S

import Control.Applicative
import Control.DeepSeq
import Control.Exception
import Control.Monad
import Data.Foldable
import Data.List
import Data.Maybe
import GHC.Generics (Generic)
import System.IO

import qualified Data.Text as T
import Data.Attoparsec.Text hiding (I)
import System.FilePath
import Text.XML.HaXml.XmlContent hiding (Parser)

import qualified ARM.MRAS.DTD.A64.Iformp as D
import ARM.MRAS.DTD.A64.Iformp hiding (Encoding, C, Box)


root :: FilePath
root = "../gen-test-out/patched-a64/ISA_v83A_A64_xml_00bet5"

test :: IO ()
test = do
    base <- listInstrs root "index.xml"
    fpsimd <- listInstrs root "fpsimdindex.xml"
    forM (base ++ fpsimd) $ \p -> do
        isec <- readInstr p
        let ins = distillInstr isec
            Instr id alias classes expls _ = ins
        -- print ins
        -- putStrLn id
        -- print alias
        let inst = parseInstruction ins <&> \f -> f []
        -- ins `deepseq` inst `deepseq` putStrLn p
        -- putStrLn p
        case inst of
            Nothing -> return ()
            Just (S.Instruction id classes pss []) -> void $
                forM classes $ \(S.Class cid _ _ encs _) ->
                    forM encs $ \(S.Encoding _ _ _ syms) ->
                        forM syms $ \(S.Symbol sym bits t) ->
                            case t of
                                Nothing -> return ()
                                Just (S.Table bfs bdy) -> do
                                    putStrLn p
                                    putStrLn sym
                                    putStrLn bits
                                    print bfs
                                    forM bdy $ \(TRow v bv av) ->
                                        putStrLn $ fromMaybe "RESERVED" v ++ ": " ++ intercalate " " (map (map showBit) bv) ++ maybe "" (\a -> " (" ++ show a ++ ")") av
                                    putStrLn ""

                                    -- hPutStrLn h p
                                    -- hPutStrLn h sym
                                    -- hPutStrLn h bits
                                    -- hPutStrLn h (show bfs)
                                    -- forM bdy $ \(TRow v bv av) ->
                                    --     hPutStrLn h $ fromMaybe "RESERVED" v ++ ": " ++ intercalate " " (map (map showBit) bv) ++ maybe "" (\a -> " (" ++ show a ++ ")") av
                                    -- hPutStrLn h ""

        -- print inst
        -- forM classes $ \(L.Class id archvar (L.Diagram psn boxes) encs _) -> do
        --     let diag = parseDiagram boxes
        --     print diag
        --     forM encs $ \(L.Encoding eid bs t _) -> do
        --         let subdiag = parseSubDiagram diag (map parseBox bs)
        --         print subdiag
    return ()


showBit :: S.Bit -> Char
showBit I = '1'
showBit O = 'O'
showBit X = 'x'

fancyBoxes :: [L.Box] -> String
fancyBoxes bs = intercalate " " (map fancyBox bs)

fancyBox :: L.Box -> String
fancyBox (L.Box hi width name cs) = prefix ++ "[ " ++ spec ++ " ]" ++ show width
  where
    prefix = fromMaybe "" name
    spec = intercalate " | " (map f cs)
    f (C w v) = v

writeBoxes :: FilePath -> IO ()
writeBoxes p = do
    withFile p WriteMode $ \h -> do
        base <- listInstrs root "index.xml"
        fpsimd <- listInstrs root "fpsimdindex.xml"
        forM (base ++ fpsimd) $ \p -> do
            hPutStr h "\n# "
            isec <- readInstr p
            let ins = distillInstr isec
                Instr id alias classes expls _ = ins
            ins `deepseq` hPutStrLn h p
            -- print ins
            -- putStrLn id
            -- print alias
            forM classes $ \(L.Class id archvar (L.Diagram psn boxes) encs _) -> do
                hPutStrLn h (fancyBoxes boxes)
                forM encs $ \(L.Encoding eid bs t _) -> do
                    -- mapM putStrLn t
                    hPutStrLn h (fancyBoxes bs)
        return ()

attoparse :: Parser a -> String -> a
attoparse parser str = case parseOnly parser (T.pack str) of
    Right a -> a
    Left err -> error ("|" ++ str ++ " !!! " ++ err ++ "|")

rawTemplates :: IO [String]
rawTemplates = concatMap f <$> ((++) <$> listInstrs root "index.xml" <*> listInstrs root "fpsimdindex.xml" >>= traverse readInstr)
  where
    f (Instructionsection attrs doc head desc _ (Classes _ (NonEmpty classes)) aliasmnem _ _ _ _) = do
        (Iclass iattrs _ _ _ (Regdiagram rattrs boxes) (NonEmpty encs) _ _) <- classes
        (D.Encoding eattrs _ _ bxs (NonEmpty asms) _) <- encs
        extract <$> asms

showTemplates :: IO ()
showTemplates = rawTemplates >>= mapM_ putStrLn

writeTemplates :: FilePath -> IO ()
writeTemplates p = do
    ts <- rawTemplates
    withFile p WriteMode $ \h -> mapM_ (hPutStrLn h) ts

extract :: Asmtemplate -> String
extract (Asmtemplate _ children) = unescape $ concatMap f children
  where
    f (Asmtemplate_A (A _ xs)) = concat xs
    f (Asmtemplate_Text (Text x)) = x
