{

module AADL.Lexer
    ( scan
    ) where

import AADL.Tokens

}

%wrapper "monad"

@whitespace = [\ \t\f\v\r]+
@bits = [10x]+
@ident = [_a-zA-Z][_a-zA-Z0-9]*
@nat = "0"|[1-9][0-9]*

aadl :-

@whitespace { skip }

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

@bits { tokWith (TBits . map readBit) }
@ident { tokWith TIdent }
@nat { tokWith (TNatLit . read) }

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
