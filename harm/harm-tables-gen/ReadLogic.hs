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

import Control.Applicative
import Control.Monad
import Data.Attoparsec.ByteString.Char8
import Data.List
import Language.Haskell.Exts
import System.Exit
import System.IO
import Text.Show
import qualified Data.ByteString.Char8 as C

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
              field':_ = flip filter fields' $ \(DiagramField width lo name') -> name' == name
            in field'
        | eid <- eids
        ]

readLogic :: Handle -> IO Logic
readLogic h = do
    content <- C.hGetContents h
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
    skipLine = skipWhile ((&&) <$> (/= '\n') <*> (/= '\r')) <* endOfLine
    go = do
        "--- "
        gid <- C.unpack <$> takeTill (== ':') <* ": '"
        tplt <- C.unpack <$> takeTill (== '\'') <* "'\n"
        eids <- many $ do
            "--- "
            C.unpack <$> takeTill (== ' ') <* skipLine
        manyTill anyChar "= '["
        innerTy <- manyTill anyChar "]\n"
        let TyTuple _ _ (_:_:tys) = (() <$) . fromParseResult . parseType $ "((),()" ++ (if null innerTy then "" else ",") ++ innerTy ++ ")" -- lol
        manyTill anyChar $ "\ndecode_" *> decimal *> " f "
        fields <- manyTill anyChar " " `manyTill` "="
        (:) (gid, tplt, eids, tys, fields) <$> parseLogic
