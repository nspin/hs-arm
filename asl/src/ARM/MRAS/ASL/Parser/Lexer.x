{

module ARM.MRAS.ASL.Parser.Lexer
    ( tokenP
    , lexer
    ) where

import ARM.MRAS.ASL.Parser.Tokens
import ARM.MRAS.ASL.Parser.ParserMonad

import Control.Lens
import Control.Monad.Except
import Control.Monad.State
import Data.Char
import Data.Word

}

@layout = [\n][\ \t]*
@whitespace = [\ \t\f\v\r]+
@comment = "//"[^\n]*

@string = [\"][^\"]*[\"]
@bin = [\'][0-1\ ]*[\']
@mask = [\'][0-1\x\ ]*[\']
@hex = "0x"[0-9A-Fa-f_]
@real = [0-9]+"."[0-9]+
@int = [0-9]+
@ident = [a-zA-Z_][a-zA-Z0-9_]+

@bits = [10x]+
@nat = "0"|[1-9][0-9]*
@infixop = "-"
@ident = [_a-zA-Z][_a-zA-Z0-9]*
@field = "#"@ident?


asl :-

@layout { layout }

@whitespace ;
@comment ;

"AND"                    { tok TokAnd           }
"DIV"                    { tok TokDiv           }
"EOR"                    { tok TokEor           }
"IMPLEMENTATION_DEFINED" { tok TokImpdef        }
"IN"                     { tok TokIn            }
"MOD"                    { tok TokMod           }
"NOT"                    { tok TokNot           }
"OR"                     { tok TokOr            }
"QUOT"                   { tok TokQuot          }
"REM"                    { tok TokRem           }
"SEE"                    { tok TokSee           }
"UNDEFINED"              { tok TokUndefined     }
"UNKNOWN"                { tok TokUnknown       }
"UNPREDICTABLE"          { tok TokUnpredictable }
"__builtin"              { tok TokBuiltin       }
"__register"             { tok TokRegister      }
"array"                  { tok TokArray         }
"assert"                 { tok TokAssert        }
"case"                   { tok TokCase          }
"catch"                  { tok TokCatch         }
"constant"               { tok TokConstant      }
"do"                     { tok TokDo            }
"downto"                 { tok TokDownto        }
"else"                   { tok TokElse          }
"elsif"                  { tok TokElsif         }
"enumeration"            { tok TokEnum          }
"for"                    { tok TokFor           }
"if"                     { tok TokIf            }
"is"                     { tok TokIs            }
"of"                     { tok TokOf            }
"otherwise"              { tok TokOtherwise     }
"repeat"                 { tok TokRepeat        }
"return"                 { tok TokReturn        }
"then"                   { tok TokThen          }
"throw"                  { tok TokThrow         }
"to"                     { tok TokTo            }
"try"                    { tok TokTry           }
"type"                   { tok TokType          }
"typeof"                 { tok TokTypeof        }
"until"                  { tok TokUntil         }
"when"                   { tok TokWhen          }
"while"                  { tok TokWhile         }

"^"   { tok TokCaret     }
"/"   { tok TokSlash     }
"-"   { tok TokMinus     }
"*"   { tok TokStar      }
":"   { tok TokColon     }
";"   { tok TokSemi      }
","   { tok TokComma     }
"||"  { tok TokBarBar    }
"&&"  { tok TokAmpAmp    }
"&"   { tok TokAmp       }
"=="  { tok TokEqEq      }
"="   { tok TokEq        }
"!="  { tok TokNeq       }
"!"   { tok TokBang      }
".."  { tok TokDotDot    }
"."   { tok TokDot       }
"++"  { tok TokPlusPlus  }
"+:"  { tok TokPlusColon }
"+"   { tok TokPlus      }
"<<"  { tok TokLtLt      }
"<="  { tok TokLtEq      }
"<"   { tok TokLt        }
">>"  { tok TokGtGt      }
">="  { tok TokGtEq      }
">"   { tok TokGt        }
"["   { tok TokLBrack    }
"]"   { tok TokRBrack    }
"{"   { tok TokLBrace    }
"}"   { tok TokRBrace    }
"("   { tok TokLParen    }
")"   { tok TokRParen    }

@bin    { str TokBin       }
@mask   { str TokMask      }
@int    { str TokInt       }
@hex    { str TokHex       }
@real   { str TokReal      }
@string { str TokString    }
@ident  { str TokIdent     }
@ident  { str TokTident    }
@ident  { str TokQualifier }

{

type AlexInput = PState

alexGetByte :: AlexInput -> Maybe (Word8, AlexInput)
alexGetByte = nextByte

alexInputPrevChar :: AlexInput -> Char
alexInputPrevChar = _p_prev_char

type Action = String -> P (Either [LayoutUnit] Token)

layout :: Action
layout ('\n':rest) = return (Left (map f rest))
  where
    f ' '  = LayoutUnitSpace
    f '\t' = LayoutUnitTab

tok :: Token -> Action
tok t _ = Right t <$ updateDelimStack t

str :: (String -> Token) -> Action
str f s = return (Right (f s))

nestedComment :: Action
nestedComment _ = go 1
  where
    go 0 = naiveTok
    go n = do
        b1 <- byte
        b2 <- byte
        case map (chr . fromIntegral) [b1, b2] of
            "/*" -> go (n + 1)
            "*/" -> go (n - 1)
            _    -> go n
    byte = do
        s <- get
        case nextByte s of
            Nothing -> throwError $ PError (_p_pos s) "unmatched '/*'"
            Just (b, s') -> b <$ put s

naiveTok :: P (Either [LayoutUnit] Token)
naiveTok = do
    p <- get
    case alexScan p 0 of
        AlexError p' -> throwError $ PError (_p_pos p) "lex error"
        AlexSkip p' _ -> put p' >> naiveTok
        AlexToken p' len action -> put p' >> action (take len (_p_curr_input p))
        AlexEOF -> return (Right TokEOF)

-- TODO(nspin) tidy up
tokenP :: P Token
tokenP = do
    p <- get
    case _p_next_toks p of
        t:ts -> t <$ (p_next_toks .= ts)
        [] -> do
            etok <- naiveTok
            case etok of
                Left prefix -> do
                    delims <- anyDelims
                    if delims then tokenP else go prefix
                Right TokEOF -> case _p_layout_ctx p of
                    _:s -> TokDedent <$ (p_layout_ctx .= s)
                    [] -> return TokEOF
                Right tok -> return tok
  where
    go prefix = do
        etok <- naiveTok
        case etok of
            Left prefix' -> go prefix'
            Right TokEOF -> tokenP
            Right tok -> do
                p_next_toks %= (:) tok
                diff <- updateLayout prefix
                case diff of
                    0 -> tokenP
                    1 -> return TokIndent
                    _ -> p_next_toks %= (replicate (-diff) TokDedent ++) >> tokenP
                    

lexer :: (Token -> P a) -> P a
lexer = (>>=) tokenP

}
