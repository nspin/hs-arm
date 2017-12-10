{

module AADL.Lexer
    ( lexer
    , tokenP
    ) where

import AADL.Tokens
import AADL.ParserMonad

import Control.Monad.Except
import Control.Monad.State
import Data.Word

}

@whitespace = [\ \t\f\v\r]+
@comment = "//"[^\n]*\n

@bits = [10x]+
@nat = "0"|[1-9][0-9]*
@infixop = "-"
@ident = [_a-zA-Z][_a-zA-Z0-9]*
@field = "#"@ident?

aadl :-

@whitespace ;
@comment ;

"{"        { const TokCurlyOpen      }
"}"        { const TokCurlyClose     }
"["        { const TokSquareOpen     }
"]"        { const TokSquareClose    }
\n         { const TokEOL            }

"::"       { const TokSymDoubleColon }
":"        { const TokSymColon       }
"="        { const TokSymEquals      }
"->"       { const TokSymArrow       }

"insn"     { const TokKwInsn         }
"type"     { const TokKwType         }
"enc"      { const TokKwEnc          }
"dec"      { const TokKwDec          }
"case"     { const TokKwCase         }
"error"    { const TokKwError        }
"RESERVED" { const TokKwReserved     }

@bits      { TokBits . map readBit   }
@nat       { TokNatLit . read        }
@infixop   { TokInfixOp              }
@ident     { TokIdent                }
@field     { TokField . readField    }

{

type AlexInput = PState

alexGetByte :: AlexInput -> Maybe (Word8, AlexInput)
alexGetByte = nextByte

alexInputPrevChar :: AlexInput -> Char
alexInputPrevChar = _p_prev_char

lexer :: (Token -> P a) -> P a
lexer = (>>=) tokenP

tokenP :: P Token
tokenP = do
    p <- get
    case alexScan p 0 of
        AlexEOF -> return TokEOF
        AlexError p' -> throwError $ PError (_p_pos p) "lex error"
        AlexSkip p' _ -> put p' >> tokenP
        AlexToken p' len action -> action (take len (_p_curr_input p)) <$ put p'

}
