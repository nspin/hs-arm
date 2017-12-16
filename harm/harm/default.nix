{ mkDerivation, attoparsec, base, bytestring, cereal, elf
, harm-types, harm-values, stdenv, text
}:
mkDerivation {
  pname = "harm";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [
    attoparsec base bytestring cereal elf harm-types harm-values text
  ];
  license = stdenv.lib.licenses.mit;
}
