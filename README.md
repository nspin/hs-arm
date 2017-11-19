# harm

Arm recently released a [MRAS (machine-readable architecture specification) for Arm v8.3](https://developer.arm.com/products/architecture/a-profile/exploration-tools) to the public.

This repository contains a collection of Haskell libraries and programs whose ultimate output will be `harm`, a Haskell assembler, disassembler, and analyzer for ARMv8-A.

Right now, I'm working on combining the ARM MRAS with opcode and operand tables extracted from the GNU Binutils source and the Go reference implementation source to produce a machine-readable description (a large Haskell source file) of both the architecture and the assembly language for ARMv8.

This project involves a lot of source code generation. Past what's been mentioned above, the following source code is generated: types corresponding to DTD's for the the MRAS, expressions containing the information in the MRAS, types corresponding to enums found in the opcodes library in Binutils and the Go source, and expressions containing the information in tables from the opcodes library in Binutils and the Go source.

## Structure

This code generation process is complex, but [nix](https://nixos.org/nix/) makes it manageable. The entire process is described in `default.nix` and `*/default.nix`. `./generated-sources` contains some up-to-date nix output for perusal.

- **`harm-gen-utils`**: Program that uses `arm-mras` to output Haskell types describing various aspects of the various ARMv8 ISA's (not much here yet).
- **`harm`**: Library, assembler, disassembler, and analyzer including the output of `harm-gen-utils` (not much here yet).
- **`arm-mras`**: Code for generating code from the MRAS.
    - **`dtd-gen-utils`**: Program whose input is the MRAS, and whose output is a Haskell library containing types corresponding to the types found in the MRAS DTD's.
    - **`types`**: Library containing for describing the information contained in the MRAS.
    - **`values-gen-utils`**: Program whose input is the MRAS, and whose output is part of a Haskell library containing values of the types found in `arm-mras-types`.
    - **`values`**: Library containing expressions of the types found in `types`. Includes the output of `values-gen-utils`.
- **`arm-binutils-tables`**: Code for generating code from the source of Binutils.
    - **`types`**: Library containing the types of the tables from the opcode library in Binutils.
    - **`types-gen-utils`**: Program that generates types in `types` from C enums in Binutils.
    - **`values`**: Library containing the value of the tables in Binutils.
    - **`values-gen-utils`**: Program that extracts values of the types found in `types` from Binutils.
- **`arm-go-tables`**: Same structure as that of `arm-binutils-tables`
