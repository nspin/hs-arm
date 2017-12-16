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

Print mnemonic and identifier of every instruction in an object file:

```haskell
import Harm
import Harm.Extra
import Control.Monad

main :: IO ()
main = do
    (start, t) <- elfText "test/nix-results/test.busybox/busybox"
    forM_ (zip [start, start + 4..] t) $ \(offset, w) -> do
        putStrLn $ hex offset ++ "  " ++
            case encodingOf w of
                Nothing -> hex w
                Just enc -> show enc
```
```
0000000000400200  SUB SUB_64_addsub_imm
0000000000400204  SUBS SUBS_32S_addsub_imm
0000000000400208  CSINC CSINC_32_condsel
000000000040020c  ANDS ANDS_32_log_shift
0000000000400210  STP STP_64_ldstpair_pre
0000000000400214  ADD ADD_64_addsub_imm
0000000000400218  STP STP_64_ldstpair_off
000000000040021c  ADRP ADRP_only_pcreladdr
0000000000400220  ADD ADD_64_addsub_imm
0000000000400224  LDR LDR_64_ldst_pos
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
        liftIO (readFile "examples/prelude.asl") >>= parse
        forM_ (topoSort sharedps) $
            parse . _shared_ps_code >=> liftIO . mapM_ print
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
templates = sort $ (base ++ fpsimd) ^..
    traverse.classes.class_encodings.traverse.encoding_template
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
