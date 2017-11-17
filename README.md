# harm

Arm recently released a [MRAS (machine-readable architecture specification) for Arm v8.3](https://developer.arm.com/products/architecture/a-profile/exploration-tools) to the public.

This repository contains a collection of Haskell libraries programs whose ultimate output will be `harm`, a Haskell assembler, disassembler, and analyzer for ARMv8-A.

This is a work in progress.

## Structure

This code generation process is complex, but [nix](https://nixos.org/nix/) makes it manageable.
The entire process is described in `default.nix` and `*/default.nix`.

- **`harm-gen-utils`**: Program that uses `arm-mras` to output Haskell types describing various aspects of the various ARMv8 ISA's.
- **`harm`**: Library, assembler, disassembler, and analyzer including the output of `harm-gen-utils` (nothing there yet).
- **`arm-mras`**: Code for generating code from the MRAS
    - **`dtd-gen-utils`**: Program whose input is the MRAS, and whose output is a Haskell library containing types corresponding to the types found in the MRAS DTD's.
    - **`types`**: Library containing for describing the information contained in the MRAS.
    - **`values-gen-utils`**: Program whose input is the MRAS, and whose output is part of a Haskell library containing values of the types found in `arm-mras-types`.
    - **`values`**: Library containing expressions of the types found in `types`. Includes the output of `values-gen-utils`.
- **`binutils-aarch64-opcode-table`**: Code for generating code from source of GNU-binutils
    - **`types`**: Library containing the type of the opcode table in `binutils/opcodes/aarch64-tbl.h`.
    - **`types-gen-utils`**: Program that generates types in `types` from the `binutils/opcodes/aarch64-tbl.h` (by parsing C enums).
    - **`values`**: Library containing the value of the opcode table in `binutils/opcodes/aarch64-tbl.h`.
