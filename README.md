# hs-arm-mras

Arm has released a [MRAS (machine-readable architecture specification) for Arm v8.3](https://developer.arm.com/products/architecture/a-profile/exploration-tools) to the public.

This repository contains a collection of Haskell libraries programs whose ultimate output is a set of Haskell expressions containing the information in the MRAS.

This project involves two phases of source code generation:
1) Generation of types corresponding to DTD's for the MRAS
2) Generation of the expressions containing the information in the MRAS

## Structure

This code generation process is complex, but [nix](https://nixos.org/nix/) makes it manageable. The entire process is described in `./default.nix`. `./nix-results` contains some up-to-date nix output for perusal.

- **`dtd-gen-utils`**: Program whose input is the MRAS, and whose output is a Haskell library containing types corresponding to the types found in the MRAS DTD's.
- **`types`**: Library containing types for describing the information contained in the MRAS.
- **`values-gen-utils`**: Program whose input is the MRAS, and whose output is part of a Haskell library containing values of the types found in `arm-mras-types`.
- **`values`**: Library containing expressions of the types found in `types`. Includes the output of `values-gen-utils`.

# Example

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
