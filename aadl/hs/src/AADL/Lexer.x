{

module AADL.Lexer
    ( scan
    ) where

import AADL.Tokens

}

%wrapper "monad"

@whitespace = [\ \t\f\v\r]+
@comment = "//"[^\n]*\n

@bits = [10x]+
@nat = "0"|[1-9][0-9]*
@infixop = "-"
@ident = [_a-zA-Z][_a-zA-Z0-9]*
@field = "#"@ident?

aadl :-

@whitespace { skip }
@comment { skip }

"{" { tok TCurlyOpen }
"}" { tok TCurlyClose }
"[" { tok TSquareOpen }
"]" { tok TSquareClose }
\n { tok TEOL }

"::" { tok TSymDoubleColon }
":" { tok TSymColon }
"=" { tok TSymEquals }
"->" { tok TSymArrow }

"insn" { tok TKWInsn }
"type" { tok TKWType }
"enc" { tok TKWEnc }
"dec" { tok TKWDec }
"case" { tok TKWCase }
"error" { tok TKWError }
"RESERVED" { tok TKWReserved }

@bits { tokWith (TBits . map readBit) }
@nat { tokWith (TNatLit . read) }
@infixop { tokWith TInfixOp }
@ident { tokWith TIdent }
@field { tokWith (TField . readField) }

{

type T = Maybe (TokenWithCtx AlexPosn)

alexEOF :: Alex T
alexEOF = return Nothing

tok :: Token -> AlexInput -> Int -> Alex T
tok t (pos, c, bs, str) len = return (Just (TokenWithCtx pos (take len str) t))

tokWith :: (String -> Token) -> AlexInput -> Int -> Alex T
tokWith t (pos, c, bs, str) len = return (Just (TokenWithCtx pos s (t s)))
  where
    s = take len str

scan input = runAlex input go
  where
    go = do
        mt <- alexMonadScan
        case mt of
            Nothing -> return []
            Just t -> (:) t <$> go

}
