{

module ARM.MRAS.ASL.Parser.Parser
    ( definitionsP
    , statementsP
    ) where

import ARM.MRAS.ASL.Parser.Lexer
import ARM.MRAS.ASL.Parser.ParserMonad
import ARM.MRAS.ASL.Parser.Syntax
import ARM.MRAS.ASL.Parser.Tokens

import Control.Monad.Except
import Control.Monad.State
import Data.Foldable
import Data.List.NonEmpty (NonEmpty(..), (<|))

}

%token
    
    INDENT { TokIndent }
    DEDENT { TokDedent }

    INT       { TokInt       $$ }
    HEX       { TokHex       $$ }
    REAL      { TokReal      $$ }
    BIN       { TokBin       $$ }
    MASK      { TokMask      $$ }
    STRING    { TokString    $$ }
    IDENT     { TokIdent     $$ }
    TIDENT    { TokTident    $$ }
    QUALIFIER { TokQualifier $$ }

    'AND'                    { TokAnd           }
    'DIV'                    { TokDiv           }
    'EOR'                    { TokEor           }
    'IMPLEMENTATION_DEFINED' { TokImpdef        }
    'IN'                     { TokIn            }
    'MOD'                    { TokMod           }
    'NOT'                    { TokNot           }
    'OR'                     { TokOr            }
    'QUOT'                   { TokQuot          }
    'REM'                    { TokRem           }
    'SEE'                    { TokSee           }
    'UNDEFINED'              { TokUndefined     }
    'UNKNOWN'                { TokUnknown       }
    'UNPREDICTABLE'          { TokUnpredictable }
    '__builtin'              { TokBuiltin       }
    '__register'             { TokRegister      }
    'array'                  { TokArray         }
    'assert'                 { TokAssert        }
    'case'                   { TokCase          }
    'catch'                  { TokCatch         }
    'constant'               { TokConstant      }
    'do'                     { TokDo            }
    'downto'                 { TokDownto        }
    'else'                   { TokElse          }
    'elsif'                  { TokElsif         }
    'enumeration'            { TokEnum          }
    'for'                    { TokFor           }
    'if'                     { TokIf            }
    'is'                     { TokIs            }
    'of'                     { TokOf            }
    'otherwise'              { TokOtherwise     }
    'repeat'                 { TokRepeat        }
    'return'                 { TokReturn        }
    'then'                   { TokThen          }
    'throw'                  { TokThrow         }
    'to'                     { TokTo            }
    'try'                    { TokTry           }
    'type'                   { TokType          }
    'typeof'                 { TokTypeof        }
    'until'                  { TokUntil         }
    'when'                   { TokWhen          }
    'while'                  { TokWhile         }

    ' < ' { TokLt }
    ' > ' { TokGt }

    '&'  { TokAmp       }
    '&&' { TokAmpAmp    }
    '!'  { TokBang      }
    '^'  { TokCaret     }
    ':'  { TokColon     }
    ','  { TokComma     }
    '.'  { TokDot       }
    '..' { TokDotDot    }
    '='  { TokEq        }
    '==' { TokEqEq      }
    '>=' { TokGtEq      }
    '>>' { TokGtGt      }
    '<'  { TokLAngle    }
    '>'  { TokRAngle    }
    '{'  { TokLBrace    }
    '}'  { TokRBrace    }
    '['  { TokLBrack    }
    ']'  { TokRBrack    }
    '('  { TokLParen    }
    ')'  { TokRParen    }
    '<=' { TokLtEq      }
    '<<' { TokLtLt      }
    '-'  { TokMinus     }
    '!=' { TokNeq       }
    '||' { TokBarBar    }
    '+'  { TokPlus      }
    '+:' { TokPlusColon }
    '++' { TokPlusPlus  }
    ';'  { TokSemi      }
    '/'  { TokSlash     }
    '*'  { TokStar      }

%monad { P }
%lexer { lexer } { TokEOF }
%tokentype { Token }

%name definitionsP list_definition
%name statementsP possibly_empty_block

%%

-- Identifiers

ident ::     { Ident        }
    : IDENT  { Ident $1     }
    | 'type' { Ident "type" }

qualident ::              { QIdent                      }
    : ident               { QIdent Nothing $1           }
    | QUALIFIER '.' ident { QIdent (Just (Ident $1)) $3 }

tident ::                  { QIdent                              }
    : TIDENT               { QIdent Nothing (Ident $1)           }
    | QUALIFIER '.' TIDENT { QIdent (Just (Ident $1)) (Ident $3) }

tidentdecl ::             { QIdent                                                   }
    : IDENT               { % QIdent Nothing (Ident $1) <$ addTypeIdent $1           }
    | QUALIFIER '.' IDENT { % QIdent (Just (Ident $1)) (Ident $3) <$ addTypeIdent $3 }
    | tident              { $1                                                       }

-- Definitions

definition :: { Definition }

    : '__builtin' 'type' tidentdecl ';'                   { DefTyBuiltin $3  }
    | 'type' tidentdecl ';'                               { DefTyDecl $2     }
    | 'type' tidentdecl 'is' '(' csl_field ')'            { DefTyDef $2 $5   }
    | 'type' tidentdecl '=' type_expr ';'                 { DefTyAlias $2 $4 }
    | 'enumeration' tidentdecl '{' enum_inner '}' ';'     { DefTyEnum $2 $4  }

    | type_expr qualident ';'                     { DefVarDecl $1 $2             }
    | 'constant' type_expr IDENT '=' expr ';'     { DefConstDef $2 (Ident $3) $5 }
    | 'array' type_expr IDENT '{' ixtype '}' ';'  { DefArrDecl $2 (Ident $3) $5  }
    | 'array' type_expr IDENT '[' ixtype ']' ';'  { DefArrDecl $2 (Ident $3) $5  }

    | type_expr qualident '(' csl_formal ')' ';'                        { DefFn (Just [$1]) $2 $4 Nothing   }
    | type_expr qualident '(' csl_formal ')' indented_block             { DefFn (Just [$1]) $2 $4 (Just $6) }
    | '(' csl_type_expr ')' qualident '(' csl_formal ')' ';'            { DefFn (Just $2) $4 $6 Nothing     }
    | '(' csl_type_expr ')' qualident '(' csl_formal ')' indented_block { DefFn (Just $2) $4 $6 (Just $8)   }
    | qualident '(' csl_formal ')' ';'                                  { DefFn Nothing $1 $3 Nothing       }
    | qualident '(' csl_formal ')' indented_block                       { DefFn Nothing $1 $3 (Just $5)     }

    | type_expr qualident indented_block                                { DefGetter [$1] $2 Nothing (Just $3) }
    | type_expr qualident '[' csl_formal ']' indented_block             { DefGetter [$1] $2 (Just $4) (Just $6) }
    | type_expr qualident '[' csl_formal ']' ';'                        { DefGetter [$1] $2 (Just $4) Nothing   }
    | '(' csl_type_expr ')'  qualident indented_block                   { DefGetter $2 $4 Nothing (Just $5)   }
    | '(' csl_type_expr ')' qualident '[' csl_formal ']' indented_block { DefGetter $2 $4 (Just $6) (Just $8) }
    | '(' csl_type_expr ')' qualident '[' csl_formal ']' ';'            { DefGetter $2 $4 (Just $6) Nothing   }

    | qualident '[' csl_sformal ']' '=' type_expr ident ';'             { DefSetter $1 (Just $3) $6 $7 Nothing   }
    | qualident '[' csl_sformal ']' '=' type_expr ident indented_block  { DefSetter $1 (Just $3) $6 $7 (Just $8) }
    | qualident '=' type_expr ident ';'                                 { DefSetter $1 Nothing $3 $4 Nothing     }
    | qualident '=' type_expr ident indented_block                      { DefSetter $1 Nothing $3 $4 (Just $5)   }

-- Differs from mra_tools parser, but there is an enum in the spec with a trailing comma.
enum_inner ::              { [Ident] }
enum_inner
    :                      { []      }
    | ident                { [$1]    }
    | ident ',' enum_inner { $1 : $3 }

ixtype ::            { IxType            }
    : tident         { IxTypeTy $1       }
    | expr '..' expr { IxTypeRange $1 $3 }

field ::               { (TyExpr, Ident) }
    : type_expr ident  { ($1, $2)        }

formal ::              { (TyExpr, Ident) }
    : type_expr ident  { ($1, $2)        }

sformal ::                 { (TyExpr, Bool, Ident) }
    : type_expr ident      { ($1, False, $2)       }
    | type_expr '&' ident  { ($1, True, $3)        }

-- Types

type_expr ::                                 { TyExpr          }
    : tident                                 { TyExprId $1     }
    | tident '(' expr ')'                    { TyExprApp $1 $3 }
    | 'typeof' '(' expr ')'                  { TyExprTyOf $3   }
    | '__register' INT '{' csl_regfield '}'  { TyExprReg 0 $4  }
    | 'array' '[' ixtype ']' 'of' type_expr  { TyExprArr $3 $6 }

regfield ::              { (NonEmpty Slice, Ident) }
    : slice ident        { ($1 :| [], $2)          }
    | slice ',' regfield { ($1 <| fst $3, snd $3)  }

-- Statements

statement :: { Statement }

    : type_expr ident cpl_ident ';'           { StAssignSig $1 ($2 :| $3) }
    | type_expr ident '=' expr ';'            { StAssignVal $1 $2 $4      }
    | 'constant' type_expr ident '=' expr ';' { StAssignConst $2 $3 $5    }
    | lexpr '=' expr ';'                      { StAssignPat $1 $3         }

    | qualident '(' csl_expr ')' ';'       { StProc $1 $3    }
    | 'return' option_expr ';'             { StRet $2        }
    | 'assert' expr ';'                    { StAssert $2     }
    | 'UNPREDICTABLE' ';'                  { StUnpredictable }
    | 'IMPLEMENTATION_DEFINED' STRING ';'  { StImpDef $2     }

    | 'if' expr 'then' nonempty_block list_s_elsif option_s_else  { StIf $2 $4 $5 $6     }
    | 'case' expr 'of' INDENT alt list_alt DEDENT                 { StCase $2 ($5 :| $6) }

    | 'for' ident '=' expr direction expr indented_block  { StFor $2 $4 $5 $6 $7 }
    | 'while' expr 'do' indented_block                    { StWhile $2 $4        }
    | 'repeat' indented_block 'until' expr ';'            { StRepeat $2 $4       }

    | 'throw' ident ';'                   { StThrow $2                  }
    | 'UNDEFINED' ';'                     { StUndefined                 }
    | 'SEE' '(' expr ')' ';'              { StSeeExpr $3                }
    | 'SEE' STRING ';'                    { StSeeStr $2                 }
    | 'try' indented_block
      'catch' ident
      INDENT catcher list_catcher DEDENT  { StTryCatch $2 $4 ($6 :| $7) }

catcher ::                        { (Maybe Expr, NonEmpty Statement) }
    : 'when' expr indented_block  { (Just $2, $3)                    }
    | 'otherwise' indented_block  { (Nothing, $2)                    }

direction ::    { Direction }
    : 'to'      { DirTo     }
    | 'downto'  { DirDownTo }

alt ::                                                   { (Maybe ([Pattern], Maybe Expr), [Statement]) }
    : 'when' csl_pattern '&&' expr possibly_empty_block  { (Just ($2, Just $4), $5)                     }
    | 'when' csl_pattern possibly_empty_block            { (Just ($2, Nothing), $3)                     }
    | 'otherwise' possibly_empty_block                   { (Nothing, $2)                                }

pattern ::                         { Pattern             }
    : INT                          { PatInt 0            }
    | HEX                          { PatHex 0            }
    | BIN                          { PatBin []           }
    | MASK                         { PatMask []          }
    | IDENT                        { PatIdent (Ident $1) }
    | '(' pattern csl_pattern ')'  { PatTuple ($2 :| $3) }
    ;

list_s_elsif ::                                        { [(Expr, NonEmpty Statement)] }
    :                                                  { []                           }
    | 'elsif' expr 'then' nonempty_block list_s_elsif  { ($2, $4) : $5                }

option_s_else ::             { Maybe (NonEmpty Statement) }
    :                        { Nothing                    }
    | 'else' nonempty_block  { Just $2                    }

lexpr ::                                { LExpr                       }
    : '-'                               { LExprEmpty                  }
    | qualident                         { LExprId $1                  }
    | lexpr '.' ident                   { LExprDot $1 $3              }
    | lexpr '.' '[' ident cpl_ident ']' { LExprDotBrack $1 ($4 :| $5) }
    | lexpr '.' '<' ident cpl_ident '>' { LExprDotBrack $1 ($4 :| $5) }
    | lexpr '[' csl_slice ']'           { LExprSlice $1 $3            }
    | lexpr '<' csl_slice '>'           { LExprSlice $1 $3            }
    | '<' csl_slice '>'                 { LExprWat $2                 } -- wat
    | '[' lexpr cpl_lexpr ']'           { LExprBrack ($2 :| $3)       }
    | '(' lexpr cpl_lexpr ')'           { LExprParen ($2 :| $3)       }

indented_block ::                            { NonEmpty Statement }
    : INDENT statement list_statement DEDENT { $2 :| $3           }

-- list of 0 or more statements
-- only used in case alternatives
-- todo: potential confusion in code like
--     when 0 // ignore this case
--     when 1 x = x + 1;
possibly_empty_block :: { [Statement] }
    : indented_block    { toList $1   }
    | list_statement    { $1          }

-- list of 1 or more statements
nonempty_block ::              { NonEmpty Statement }
    : indented_block           { $1                 }
    | statement list_statement { $1 :| $2           }

-- Expressions

aexpr ::                                                { Expr                 }
    : INT                                               { ExprInt 0            }
    | HEX                                               { ExprHex 0            }
    | REAL                                              { ExprReal 0           }
    | BIN                                               { ExprBin []           }
    | MASK                                              { ExprMask []          }
    | STRING                                            { ExprStr $1           }
    | qualident                                         { ExprId $1            }
    | qualident '(' csl_expr ')'                        { ExprApp $1 $3        }
    | '(' csl_expr ')'                                  { ExprTuple $2         }
    | unop aexpr                                        { ExprUnOp $1 $2       }
    | type_expr 'UNKNOWN'                               { ExprUnk $1           }
    | type_expr 'IMPLEMENTATION_DEFINED' option_string  { ExprImpDef $1 $3     }

bexpr ::                                { Expr                       }
    : aexpr                             { $1                         }
    | bexpr '.' ident                   { ExprDot $1 $3              }
    | bexpr '.' '[' ident cpl_ident ']' { ExprDotBrack $1 ($4 :| $5) }
    | bexpr '.' '<' ident cpl_ident '>' { ExprDotBrack $1 ($4 :| $5) }
    | bexpr '[' csl_slice ']'           { ExprSlice $1 $3            } -- This is incorrect
    | bexpr '<' csl_slice '>'           { ExprSlice $1 $3            }
    | bexpr 'IN' '{' csl_element '}'    { ExprInSet $1 $4            }
    | bexpr 'IN' MASK                   { ExprInMask $1 []           }

element ::            { (Expr, Maybe Expr) }
    : expr            { ($1, Nothing)      }
    | expr '..' expr  { ($1, Just $3)      }

cexpr1 ::                 { Expr               }
    : bexpr binop1 cexpr1 { ExprBinOp $1 $2 $3 }
    | bexpr               { $1                 }

cexpr ::                 { Expr               }
    : bexpr binop2 cexpr { ExprBinOp $1 $2 $3 }
    | bexpr              { $1                 }

slice ::                 { Slice                }
    : cexpr1             { Slice $1             }
    | cexpr1 ':' cexpr   { SliceColon $1 $3     }
    | cexpr1 '+:' cexpr  { SlicePlusColon $1 $3 }

expr ::                                               { Expr               }
    : 'if' expr 'then' expr list_e_elsif 'else' expr  { ExprIf $2 $4 $5 $7 }
    | cexpr                                           { $1                 }

list_e_elsif ::                              { [(Expr, Expr)] }
    :                                        { []             }
    | 'elsif' expr 'then' expr list_e_elsif  { ($2, $4) : $5  }

unop ::      { UnOp      }
    : '-'    { UnOpMinus }
    | '!'    { UnOpBang  }
    | 'NOT'  { UnOpNot   }

binop2 ::    { BinOp      }
    : binop1 { $1         }
    | ':'    { BinOpColon }

binop1 ::     { BinOp         }
    : '=='    { BinOpEqEq     }
    | '!='    { BinOpNeq      }
    | '>='    { BinOpGtEq     }
    | '<='    { BinOpLtEq     }
    | '<<'    { BinOpLtLt     }
    | '>>'    { BinOpGtGt     }
    | '+'     { BinOpPlus     }
    | '-'     { BinOpMinus    }
    | '*'     { BinOpStar     }
    | '/'     { BinOpSlash    }
    | '^'     { BinOpCaret    }
    | '&&'    { BinOpAmpAmp   }
    | '||'    { BinOpBarBar   }
    | 'OR'    { BinOpOr       }
    | 'EOR'   { BinOpEor      }
    | 'AND'   { BinOpAnd      }
    | '++'    { BinOpPlusplus }
    | 'QUOT'  { BinOpQuot     }
    | 'REM'   { BinOpRem      }
    | 'DIV'   { BinOpDiv      }
    | 'MOD'   { BinOpMod      }
    | ' > '   { BinOpGt       }
    | ' < '   { BinOpLt       }

--

option_expr :: { Maybe Expr }
    :          { Nothing    }
    | expr     { Just $1    }

option_string ::  { Maybe String }
    :             { Nothing      }
    | STRING      { Just $1      }

list_definition ::               { [Definition] }
    :                            { []           }
    | definition list_definition { $1 : $2      }

list_catcher ::             { [(Maybe Expr, NonEmpty Statement)] }
    :                       { []                                 }
    | catcher list_catcher  { $1 : $2                            }

list_alt ::         { [(Maybe ([Pattern], Maybe Expr), [Statement])] }
    :               { []                                             }
    | alt list_alt  { $1 : $2                                        }

list_statement ::              { [Statement] }
    :                          { []          }
    | statement list_statement { $1 : $2     }

csl_field ::          { [(TyExpr, Ident)] }
    :                 { []                }
    | field cpl_field { $1 : $2           }

csl_formal ::           { [(TyExpr, Ident)] }
    :                   { []                }
    | formal cpl_formal { $1 : $2           }

csl_sformal ::            { [(TyExpr, Bool, Ident)] }
    :                     { []                      }
    | sformal cpl_sformal { $1 : $2                 }

csl_type_expr ::              { [TyExpr] }
    :                         { []       }
    | type_expr cpl_type_expr { $1 : $2  }

csl_ident ::          { [Ident] }
    :                 { []      }
    | ident cpl_ident { $1 : $2 }

csl_slice ::          { [Slice] }
    :                 { []      }
    | slice cpl_slice { $1 : $2 }

csl_expr ::         { [Expr]  }
    :               { []      }
    | expr cpl_expr { $1 : $2 }

csl_lexpr ::          { [LExpr] }
    :                 { []      }
    | lexpr cpl_lexpr { $1 : $2 }

csl_regfield ::             { [(NonEmpty Slice, Ident)] }
    :                       { []                        }
    | regfield cpl_regfield { $1 : $2                   }

csl_pattern ::            { [Pattern] }
    :                     { []        }
    | pattern cpl_pattern { $1 : $2   }

csl_element ::            { [(Expr, Maybe Expr)] }
    :                     { []                   }
    | element cpl_element { $1 : $2              }

cpl_field ::              { [(TyExpr, Ident)] }
    :                     { []                }
    | ',' field cpl_field { $2 : $3           }

cpl_formal ::               { [(TyExpr, Ident)] }
    :                       { []                }
    | ',' formal cpl_formal { $2 : $3           }

cpl_sformal ::                { [(TyExpr, Bool, Ident)] }
    :                         { []                      }
    | ',' sformal cpl_sformal { $2 : $3                 }

cpl_type_expr ::                  { [TyExpr] }
    :                             { []       }
    | ',' type_expr cpl_type_expr { $2 : $3  }

cpl_ident ::              { [Ident] }
    :                     { []      }
    | ',' ident cpl_ident { $2 : $3 }

cpl_slice ::              { [Slice] }
    :                     { []      }
    | ',' slice cpl_slice { $2 : $3 }

cpl_expr ::             { [Expr]  }
    :                   { []      }
    | ',' expr cpl_expr { $2 : $3 }

cpl_lexpr ::              { [LExpr] }
    :                     { []      }
    | ',' lexpr cpl_lexpr { $2 : $3 }

cpl_regfield ::                 { [(NonEmpty Slice, Ident)] }
    :                           { []                        }
    | ',' regfield cpl_regfield { $2 : $3                   }

cpl_pattern ::                { [Pattern] }
    :                         { []        }
    | ',' pattern cpl_pattern { $2 : $3   }

cpl_element ::                { [(Expr, Maybe Expr)] }
    :                         { []                   }
    | ',' element cpl_element { $2 : $3              }

{

happyError :: P a
happyError = do
    pos <- gets _p_pos
    throwError $ PError pos "parse error"

}
