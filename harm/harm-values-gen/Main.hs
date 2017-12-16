module Main (main) where

import Extract

import ARM.MRAS

import Language.Haskell.Exts
import System.Environment
import System.Exit
import System.FilePath
import System.Directory


main :: IO ()
main = do
    args <- getArgs
    case args of
        [outDir] -> generate outDir
        _ -> die $ "Usage: gen-harm-values <outDir>"

generate :: FilePath -> IO ()
generate outDir = do
    createDirectoryIfMissing True (takeDirectory file)
    writeFile file $ prettyPrint build
  where
    file = outDir </> "gen" </> "Harm" </> "Values" </> "Gen.hs"

build :: Module ()
build = Module () (Just head) [] imps decls
  where
    head = ModuleHead () (ModuleName () "Harm.Values.Gen") Nothing Nothing
    imps = [basicImport "Harm.Types"]
    decls = [instrTy, tableSig, tableVal] ++ instrTys

instrTy :: Decl ()
instrTy = buildType "Encoding" [ (mnem, [mnem]) | (mnem, _) <- encodingInfo ] ["Eq", "Read", "Show"]

instrTys :: [Decl ()]
instrTys =
    [ buildType mnem [ (mnem ++ "_" ++ id, []) | (id, _) <- encs ] ["Eq", "Read", "Show", "Enum"]
    | (mnem, encs) <- encodingInfo
    ]

tableSig :: Decl ()
tableSig = TypeSig () [Ident () "decodeTable"]
    (TyList ()
        (TyTuple () Boxed
            [ TyCon () (UnQual () (Ident () "Pattern"))
            , TyCon () (UnQual () (Ident () "Encoding"))
            ]))

tableVal :: Decl ()
tableVal = FunBind ()
    [ Match () (Ident () "decodeTable") []
        (UnGuardedRhs ()
            (List () (concatMap f encodingInfo)))
        Nothing
    ]
  where
    f (mnem, encs) = map g encs
      where
        g (id, patt) = Tuple () Boxed
            [ () <$ fromParseResult (parseExp (show patt))
            , App () (Con () (UnQual () (Ident () mnem))) (Con () (UnQual () (Ident () (mnem ++ "_" ++ id))))
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
