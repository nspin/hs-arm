{-# LANGUAGE OverloadedStrings #-}

module ReadLogic
    ( readLogic
    , Logic
    , GroupId
    , FieldName
    , testReadLogic
    ) where

import MnemGroups

import ARM.MRAS

import Prelude hiding (takeWhile, hGetContents)
import Control.Applicative
import Control.Monad
import Data.Attoparsec.ByteString.Char8
import Data.Char
import Data.List hiding (takeWhile)
import Language.Haskell.Exts
import System.Exit
import System.IO hiding (hGetContents)
import Text.Show
import Data.ByteString.Char8 (unpack, hGetContents)

import Debug.Trace

testReadLogic:: IO Logic
testReadLogic = withFile "../harm-tables/src/Harm/Tables/Logic.hs" ReadMode readLogic

type Logic = [(GroupId, Template, [EncodingId], [Type ()], [DiagramField])]
type GroupId = String
type FieldName = String

resolveName :: [EncodingId] -> FieldName -> Maybe DiagramField
resolveName eids name = if all (== field) fields then Just field else Nothing
  where
    field:fields =
        [ let Just (_, _, _, fields') = find (\(m, s, _, _) -> mkeid m s == eid) insnsFlat
              field':_ = flip filter fields' $ \(DiagramField width lo name') -> map toLower name' == map toLower name
            in field'
        | eid <- eids
        ]

readLogic :: Handle -> IO Logic
readLogic h = do
    content <- hGetContents h
    case parseOnly parseLogic content of
        Left err -> error err
        Right r -> forM r $ \(gid, tplt, eids, tys, fns) -> do
            dfs <- forM fns $ \fn ->
                case resolveName eids fn of
                    Nothing -> die $ "Inconsistent diagram field definition for '" ++ fn ++ "' for " ++ show eids
                    Just df -> return df
            return (gid, tplt, eids, tys, dfs)

-- This is slow, but it doesn't matter because the input is always small
parseLogic :: Parser [(GroupId, Template, [EncodingId], [Type ()], [FieldName])]
parseLogic = [] <$ endOfInput <|> go <|> (anyChar *> parseLogic)
  where
    takeLine = takeWhile ((&&) <$> (/= '\n') <*> (/= '\r')) <* endOfLine
    go = do
        "--- "
        gid <- unpack <$> takeTill (== ':') <* ": '"
        tplt <- unpack <$> takeTill (== '\'') <* "'\n"
        eids <- many $ do
            "--- "
            unpack <$> takeTill (== ' ') <* takeLine
        takeLine
        line <- unpack <$> takeLine
        tys <- case parseDeclWithMode withDataKinds line of
            ParseFailed loc str -> fail $ formatFailure loc str
            ParseOk (TypeDecl _ (DHead _ (Ident _ name)) (TyPromoted _ (PromotedList _ _ tys)))
                | "Logical_" `isPrefixOf` name -> return (map (() <$) tys)
            _ -> fail $ "bad logical type declaration: " ++ line
        manyTill anyChar $ "\ndecode_" *> decimal *> " f "
        fields <- manyTill anyChar " " `manyTill` "="
        (:) (gid, tplt, eids, tys, fields) <$> parseLogic

withDataKinds :: ParseMode
withDataKinds = defaultParseMode
    { extensions = [EnableExtension DataKinds]
    }

formatFailure :: SrcLoc -> String -> String
formatFailure loc str =
    "Parse failed at [" ++ srcFilename loc ++ "] (" ++ show (srcLine loc) ++ ":"
        ++ show (srcColumn loc) ++ "): " ++ str
