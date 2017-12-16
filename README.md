# hs-arm-mras

Arm has released a [MRAS (machine-readable architecture specification) for Arm v8.3](https://developer.arm.com/products/architecture/a-profile/exploration-tools) to the public.

This repository contains an in-progress implementation of ARM ASL (architecture specification language) and collection of Haskell libraries programs whose ultimate output is a set of Haskell expressions containing the information in the MRAS.

## Structure

This code generation process is complex, but [nix](https://nixos.org/nix/) makes it manageable. The entire process is described in `./default.nix`. `./nix-results` contains some up-to-date nix output for perusal.

- **`asl`**: Library for parsing and interpreting ARM ASL (Architecture Specification Language).
- **`arm-mras-dtd-gen-utils`**: Program whose input is the MRAS, and whose output is a Haskell library containing types corresponding to the types found in the MRAS DTD's.
- **`arm-mras-types`**: Library containing types for describing the information contained in the MRAS.
- **`arm-mras-parse`**: Library for parsing XML files into the MRAS types, using the DTD's.
- **`arm-mras-values-gen`**: Program whose input is the MRAS, and whose output is part of a Haskell library containing values of the types found in `arm-mras-types`.
- **`arm-mras-values`**: Library containing expressions of the types found in `types`. Includes the output of `values-gen`.
- **`arm-mras`**: Library exporting modules from `arm-mras-types` and `arm-mras-values`, along with some useful functions for using the specification.

# Example

Print the offset of every return instruction in a raw binary (`*.bin`):

```haskell
import Harm

import Control.Monad
import Data.Foldable
import Data.Word
import Foreign.Marshal
import Foreign.Storable
import System.IO

main :: IO ()
main = alloca $ \ptr -> for_ [0, 4..] $ \offset -> do
    n <- hGetBuf stdin ptr 4
    when (n == 4) $ do
        w <- peek ptr
        case encodingOf w of
            Just (RET _) -> print offset
            _ -> return ()
```
```
4801
18319
31337
...
```

Parse all shared pseudocode:

```haskell
import ARM.MRAS
import ARM.MRAS.ASL.Parser

import Control.Monad
import Control.Monad.State
import Control.Monad.Except
import System.Exit

parse :: Monad m => String -> StateT [String] (ExceptT PError m) [Definition]
parse asl = StateT $ ExceptT . return . parseDefs asl

main :: IO ()
main = do
    r <- runExceptT . flip runStateT [] $ do
        liftIO (readFile "prelude.asl") >>= parse
        forM_ (topoSort sharedps) $ parse . _shared_ps_code >=> liftIO . mapM_ print
    case r of
        Left err -> die (show err)
        Right _ -> return ()
```

```
DefFn
    (Just [TyExprId (QIdent Nothing (Ident "boolean"))])
    (QIdent Nothing (Ident "HaveAnyAArch32"))
    []
    (Just (StRet
        (Just (ExprImpDef
            (TyExprId (QIdent Nothing (Ident "boolean"))) Nothing)) :| []))
...
```

Print all instruction templates (including aliases) in lexicographical order:

```haskell
import ARM.MRAS
import Control.Lens
import Data.List
import Data.Monoid

templates :: [String]
templates = sort $ (base ++ fpsimd) ^.. traverse.classes.class_encodings.traverse.encoding_template
  where
    classes = insn_classes.traverse._1 <> insn_aliases.traverse.alias_class

main = mapM_ putStrLn templates
```

```
ABS  <V><d>, <V><n>
ABS  <Vd>.<T>, <Vn>.<T>
ADC  <Wd>, <Wn>, <Wm>
ADC  <Xd>, <Xn>, <Xm>
ADCS  <Wd>, <Wn>, <Wm>
ADCS  <Xd>, <Xn>, <Xm>
ADD  <V><d>, <V><n>, <V><m>
ADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
ADD  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
ADD  <Wd|WSP>, <Wn|WSP>, #<imm>{, <shift>}
...
```
