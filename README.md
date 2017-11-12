# harm

Arm recently released a [MRAS (machine-readable architecture specification) for Arm v8.3](https://developer.arm.com/products/architecture/a-profile/exploration-tools) to the public.

This repository contains a chain of Haskell programs whose ultimate output is two Haskell libraries:

- **arm-mras**: The information contained in the MRAS as Haskell expressions.
- **harm**: Assembler, disassembler, and analyzer generated from the MRAS.

Both are works in progress.

## Structure

This code generation process is complex, but [nix](https://nixos.org/nix/) makes it manageable.
The entire process is described in `default.nix`.

Each subdirectory contains a Cabal package or part of a Cabal package, and corresponds to an attribute in `default.nix` of the same name.

- **`arm-mras-dtd-gen-utils`**: Program whose input is the MRAS, and whose output is a Haskell library containing types corresponding to the types found in the MRAS DTD's.

- **`arm-mras-types`**: Library containing for describing the information contained in the MRAS.

- **`arm-mras-gen-utils`**: Program whose input is the MRAS, and whose output is part of a Haskell library containing values of the types found in `arm-mras-types`.

- **`arm-mras`**: Library containing expressions of the types found in `arm-mras-types`. Includes the output of `arm-mras-gen-utils`.

- **`harm-gen-utils`**: Program that uses `arm-mras` to output Haskell types describing various aspects of the various ARMv8 ISA's.

- **`harm`**: Library, assembler, disassembler, and analyzer including the output of `harm-gen-utils`.
