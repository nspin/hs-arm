{

module AADL.Lexer
    ( lexer
    , tokenP
    ) where

import AADL.ParserMonad
import AADL.Tokens

import Control.Monad.State
import Control.Monad.Except
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

"{" { const TCurlyOpen }
"}" { const TCurlyClose }
"[" { const TSquareOpen }
"]" { const TSquareClose }
\n { const TEOL }

"::" { const TSymDoubleColon }
":" { const TSymColon }
"=" { const TSymEquals }
"->" { const TSymArrow }

"insn" { const TKWInsn }
"type" { const TKWType }
"enc" { const TKWEnc }
"dec" { const TKWDec }
"case" { const TKWCase }
"error" { const TKWError }
"RESERVED" { const TKWReserved }

@bits { TBits . map readBit }
@nat { TNatLit . read }
@infixop { TInfixOp }
@ident { TIdent }
@field { TField . readField }

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
        AlexEOF -> return TEOF
        AlexError p' -> throwError $ PError (_p_pos p) "lex error"
        AlexSkip p' _ -> put p' >> tokenP
        AlexToken p' len action -> action (take len (_p_curr_input p)) <$ put p'

}
