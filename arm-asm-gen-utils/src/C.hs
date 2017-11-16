module C where

import Language.C
import System.FilePath

extractTable :: CTranslationUnit a -> CInitializerList a
extractTable (CTranslUnit extdecls _) = initlist
  where
    CDeclExt (CDecl _ [(_, Just (CInitList initlist _), _)] _) = last extdecls
