# hs-arm

Arm has released a [MRAS (machine-readable architecture specification) for ARMv8.3-A](https://developer.arm.com/products/architecture/a-profile/exploration-tools) to the public.

This repository contains an in-progress library for (dis)assembling and analyzing ARMv8.3-A code, part of which is generated from the MRAS.
This repository also contains an in-progress implementation of ARM ASL (architecture specification language).

## Structure

This code generation process is complex, but [nix](https://nixos.org/nix/) makes it manageable. The entire process is described in `./default.nix`. `./nix-results` contains some up-to-date nix output for perusal.

- **`asl`**: Library for parsing and interpreting ARM ASL (Architecture Specification Language).
- **`harm`**:
    - **`harm-types`**: Types describing ARM instructions and operands.
    - **`harm-tables-gen`**: Program whose input is the MRAS and a Haskell file containing logic written in an EDSL describing the (dis)assembly and parsing of each instruction encoding, and whose output is the tables needed to (dis)assemble and parse ARM code and assembly.
    - **`harm-tables`**: The output of `harm-tables-gen`.
    - **`harm`**: An interface to `harm-tables`, along with various other analysis utilities.
- **`arm-mras`**:
    - **`arm-mras-dtd-gen-utils`**: Program whose input is the MRAS, and whose output is a Haskell library containing types corresponding to the types found in the MRAS DTD's.
    - **`arm-mras-types`**: Library containing types for describing the information contained in the MRAS.
    - **`arm-mras-parse`**: Library for parsing XML files into the MRAS types, using the DTD's.
    - **`arm-mras-values-gen`**: Program whose input is the MRAS, and whose output is part of a Haskell library containing values of the types found in `arm-mras-types`.
    - **`arm-mras-values`**: Library containing expressions of the types found in `types`. Includes the output of `values-gen`.
    - **`arm-mras`**: Library exporting modules from `arm-mras-types` and `arm-mras-values`, along with some useful functions for using the specification.

# Examples

Decode instructions from an object file:

```haskell
import Harm
import Harm.Extra
import Control.Monad
import Data.Maybe

main :: IO ()
main = do
    (start, text) <- elfText "test/nix-results/test.busybox/busybox"
    forM_ (zip [start, start + 4..] text) $ \(offset, w) ->
        putStrLn $ hex offset ++ "  " ++ maybe (hex w) show (decode w)
```
```
0000000000400200  SUB (SUB_64_addsub_imm SP SP 1600 Nothing)
0000000000400204  SUBS (SUBS_32S_addsub_imm WZR W0 1 Nothing)
0000000000400208  CSINC (CSINC_32_condsel W0 WZR WZR LE)
000000000040020c  ANDS (ANDS_32_log_shift WZR W1 W0 Nothing)
0000000000400210  STP (STP_64_ldstpair_pre X29 X30 SP (-48))
0000000000400214  ADD (ADD_64_addsub_imm X29 SP 0)
0000000000400218  STP (STP_64_ldstpair_off X19 X20 SP 16)
000000000040021c  ADRP (ADRP_only_pcreladdr X19 5824512)
0000000000400220  ADD (ADD_64_addsub_imm X3 X19 3424)
0000000000400224  LDR (LDR_64_ldst_pos X4 X3)
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
