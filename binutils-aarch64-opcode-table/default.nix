{ stdenv, fetchurl, haskellPackages, binutils, harmLib }:

with harmLib;

rec {

  types-gen-utils = haskellPackages.callPackage ./types-gen-utils {};

  types-src = mergeFrom ./types [ "binutils-aarch64-opcode-table-types.cabal" "src" "exe" ] (stdenv.mkDerivation {
    name = "types-src";
    utils = types-gen-utils;
    inherit c;
    builder = builtins.toFile "builder.sh" ''
      $utils/bin/gen $out < $c
    '';
  });

  types = with haskellPackages; mkDerivation {
    pname = "binutils-aarch64-opcode-table-types";
    version = "0.1";
    src = types-src;
    isLibrary = true;
    isExecutable = true;
    libraryHaskellDepends = [ base ];
    executableHaskellDepends = [
      base directory filepath haskell-src-exts deepseq language-c
    ];
    license = stdenv.lib.licenses.mit;
  };

  values-src = mergeFrom ./values [ "binutils-aarch64-opcode-table.cabal" "src" ] (stdenv.mkDerivation {
    name = "values-src";
    utils = types;
    inherit c;
    builder = builtins.toFile "builder.sh" ''
      $utils/bin/gen $out < $c
    '';
  });

  values = with haskellPackages; mkDerivation {
    pname = "binutils-aarch64-opcode-table";
    version = "0.1";
    src = values-src;
    libraryHaskellDepends = [
      base types
    ];
    license = stdenv.lib.licenses.mit;
  };

  c = stdenv.mkDerivation rec {
    name = "aarch64-tbl.h";
    src = fetchurl {
      url = "mirror://gnu/binutils/binutils-2.28.1.tar.bz2";
      sha256 = "1sj234nd05cdgga1r36zalvvdkvpfbr12g5mir2n8i1dwsdrj939";
    };
    builder = builtins.toFile "builder.sh" ''
      source $stdenv/setup
      tar xjf $src
      cd binutils-*
      ./configure
      make
      echo '#define VERIFIER(x) NULL' > verifier.h
      cpp -include verifier.h -include opcodes/config.h \
        -I bfd -I include -I opcodes \
        opcodes/aarch64-tbl.h \
        | sed 's/(^)/(*)/g' > $out
    '';
  };

}
