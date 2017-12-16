{ stdenv, buildPackages, fetchurl, zlib }:

let
  version = "2.28.1";
  prefix = "harm-";
  basename = "binutils-${version}";

in stdenv.mkDerivation rec {

  name = prefix + basename;

  src = fetchurl {
    url = "mirror://gnu/binutils/${basename}.tar.bz2";
    sha256 = "1sj234nd05cdgga1r36zalvvdkvpfbr12g5mir2n8i1dwsdrj939";
  };

  nativeBuildInputs = [ buildPackages.stdenv.cc ];
  buildInputs = [ zlib ];

  NIX_CFLAGS_COMPILE = "-Wno-string-plus-int -Wno-deprecated-declarations";

  configureFlags = [
    "--enable-targets=all"
    "--program-prefix=${prefix}"
  ];

  enableParallelBuilding = true;
  
  priority = 1;

}