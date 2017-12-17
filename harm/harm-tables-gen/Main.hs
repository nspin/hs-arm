module Main (main) where

import ReadLogic

import ARM.MRAS

import Language.Haskell.Exts
import System.Environment
import System.Exit
import System.FilePath
import System.IO
import System.Directory

main :: IO ()
main = do
    args <- getArgs
    case args of
        [outDir] -> generate stdin outDir
        _ -> die $ "Usage: gen-harm-tables <outDir>"

test :: IO ()
test = withFile "../harm-tables/src/Harm/Tables/Logic.hs" ReadMode $ \h -> do
    generate h "."

generate :: Handle -> FilePath -> IO ()
generate hin outDir = do
    createDirectoryIfMissing True basePath
    logic <- readLogic hin
    let out builder name deps = writeFile (pathOf name) . prettyPrint $
            Module () (Just head) [] (map basicImport deps) (builder logic)
              where
                head = ModuleHead () (ModuleName () ("Harm.Tables.Gen." ++ name)) Nothing Nothing
    out modInsn "Insn" []
    out modDecode "Decode"
        [ "Harm.Tables.Gen.Insn"
        , "Harm.Tables.Logic"
        , "Harm.Tables.Logic.Binary"
        , "Harm.Types.Pattern"
        , "Data.Word"
        ]
    out modEncode "Encode"
        [ "Harm.Tables.Gen.Insn"
        , "Harm.Tables.Logic"
        , "Harm.Tables.Logic.Binary"
        , "Data.Word"
        ]
    out modParse "Parse"
        [ "Harm.Tables.Gen.Insn"
        , "Harm.Tables.Logic"
        , "Harm.Tables.Logic.Asm"
        , "Data.Word"
        , "Data.Attoparsec.ByteString.Char8"
        ]
    out modShow "Show"
        [ "Harm.Tables.Gen.Insn"
        ]
  where
    basePath = outDir </> "gen" </> "Harm" </> "Tables" </> "Gen"
    pathOf name = basePath </> name <.> ".hs"

modInsn :: Logic -> [Decl ()]
modInsn logic = [ty] ++ tys
  where
    ty = buildType "Insn" [("B", [])] ["Eq", "Read", "Show"]
    tys = []
        -- [ buildType mnem [ (mnem ++ "_" ++ id, []) | (id, _) <- encs ] ["Eq", "Read", "Show", "Enum"]
        -- | (mnem, encs) <- encodingInfo
        -- ]

modDecode :: Logic -> [Decl ()]
modDecode logic = [sig, val]
  where
    sig = TypeSig () [Ident () "decodeTable"]
        (TyList ()
            (TyTuple () Boxed
                [ TyCon () (UnQual () (Ident () "Pattern"))
                , TyFun ()
                    (TyCon () (UnQual () (Ident () "Word32")))
                    (TyApp ()
                        (TyCon () (UnQual () (Ident () "Decode")))
                        (TyCon () (UnQual () (Ident () "Insn"))))
                ]))
    val = FunBind ()
        [ Match () (Ident () "decodeTable") []
            (UnGuardedRhs ()
                (List () []))
            Nothing
        ]
      -- where
      --   f (mnem, encs) = map g encs
      --     where
      --       g (id, patt) = Tuple () Boxed
      --           [ () <$ fromParseResult (parseExp (show patt))
      --           , App () (Con () (UnQual () (Ident () mnem))) (Con () (UnQual () (Ident () (mnem ++ "_" ++ id))))
      --           ]

modEncode :: Logic -> [Decl ()]
modEncode logic = [sig, val]
  where
    sig = TypeSig () [Ident () "encode"]
        (TyFun ()
            (TyCon () (UnQual () (Ident () "Insn")))
            (TyApp ()
                (TyCon () (UnQual () (Ident () "Encode")))
                (TyCon () (UnQual () (Ident () "Word32")))))
    val = FunBind ()
        [ Match () (Ident () "encode") [PVar () (Ident () "insn")]
            (UnGuardedRhs ()
                (App ()
                    (Var () (UnQual () (Ident () "return")))
                    (Lit () (Int () 0 "0"))))
            Nothing
        ]

modParse :: Logic -> [Decl ()]
modParse logic = [sig, val]
  where
    sig = TypeSig () [Ident () "parseAsm"]
        (TyApp ()
            (TyCon () (UnQual () (Ident () "Parser")))
            (TyCon () (UnQual () (Ident () "Insn"))))
    val = FunBind ()
        [ Match () (Ident () "parseAsm") []
            (UnGuardedRhs ()
                (App ()
                    (Var () (UnQual () (Ident () "fail")))
                    (Lit () (String () "not yet implemented" "not yet implemented"))))
            Nothing
        ]

modShow :: Logic -> [Decl ()]
modShow logic = [sig, val]
  where
    sig = TypeSig () [Ident () "showsAsm"]
        (TyFun ()
            (TyCon () (UnQual () (Ident () "Insn")))
            (TyTuple () Boxed
                [ TyCon () (UnQual () (Ident () "String"))
                , TyCon () (UnQual () (Ident () "ShowS"))
                ]))
    val = FunBind ()
        [ Match () (Ident () "showsAsm") [PVar () (Ident () "insn")]
            (UnGuardedRhs ()
                (Tuple () Boxed [Lit () (String () "NOP" "NOP"), Var () (UnQual () (Ident () "id"))]))
            Nothing
        ]

basicImport :: String -> ImportDecl ()
basicImport name = ImportDecl
    { importAnn = ()
    , importModule = ModuleName () name
    , importQualified = False
    , importSrc = False
    , importSafe = False
    , importPkg = Nothing
    , importAs = Nothing
    , importSpecs = Nothing
    }

buildType :: String -> [(String, [String])] -> [String] -> Decl ()
buildType name vals deriv = DataDecl () (DataType ()) Nothing
    (DHead () (Ident () name))
    (map f vals)
    (Just (Deriving () (map g deriv)))
  where
    f (cons, args) = QualConDecl () Nothing Nothing (ConDecl () (Ident () cons) (map h args))
    g cl = IRule () Nothing Nothing (IHCon () (UnQual () (Ident () cl)))
    h = TyCon () . UnQual () . Ident ()
