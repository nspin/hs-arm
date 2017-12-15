module ARM.MRAS.ASL.Parser
    ( parseDefs
    , parseStmts
    , PError(..)
    , Position(..)
    , module ARM.MRAS.ASL.Parser.Syntax
    ) where

import ARM.MRAS.ASL.Parser.Parser
import ARM.MRAS.ASL.Parser.ParserMonad
import ARM.MRAS.ASL.Parser.Syntax

import Control.Monad.State

parseDefs :: String -> [String] -> Either PError ([Definition], [String])
parseDefs input types = (fmap . fmap) _p_type_idents $
    runStateT (unP definitionsP) (initP types input)

parseStmts :: [String] -> String -> Either PError [Statement]
parseStmts types input = evalStateT (unP statementsP) (initP types input)

debug :: P a -> String -> Either PError a
debug p input = evalStateT (unP p) (initP prelude input)
  where
    prelude = ["bit", "bits", "boolean", "integer", "real"]
