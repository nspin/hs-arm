module ARM.MRAS.ASL.Parser
    ( parseDefinitions
    , parseStatements
    ) where

import ARM.MRAS.ASL.Parser.ParserMonad
-- import ARM.MRAS.ASL.Parser.Parser

import Control.Monad.Except
import Control.Monad.State

parseDefinitions :: String -> Either PError String
parseDefinitions = undefined
-- parseDefinitions input = evalStateT (unP definitionsP) (initP input)

parseStatements :: String -> Either PError String
parseStatements = undefined
-- parseStatements input = evalStateT (unP statementsP) (initP input)

