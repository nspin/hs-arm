{ mkDerivation, arm-mras, attoparsec, base, bytestring, cereal, elf
, harm-tables, harm-types, stdenv, text
}:
mkDerivation {
  pname = "harm";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [
    arm-mras attoparsec base bytestring cereal elf harm-tables
    harm-types text
  ];
  license = stdenv.lib.licenses.mit;
}
