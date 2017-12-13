module ARM.MRAS.ASL.Parser
    ( parseDefinitions
    , parseStatements
    ) where

import ARM.MRAS.ASL.Parser.Parser
import ARM.MRAS.ASL.Parser.ParserMonad
import ARM.MRAS.ASL.Parser.Syntax

import Control.Monad.Except
import Control.Monad.State

parseDefinitions :: String -> StateT [String] (Either PError) [Definition]
parseDefinitions input = StateT $ \types -> (fmap . fmap) _p_type_idents $
    runStateT (unP definitionsP) (initP types input)

parseStatements :: [String] -> String -> Either PError [Statement]
parseStatements types input = evalStateT (unP statementsP) (initP types input)

debug :: P a -> String -> Either PError a
debug p input = evalStateT (unP p) (initP prelude input)
  where
    prelude = ["bits", "integer", "real", "bits", "boolean"]
