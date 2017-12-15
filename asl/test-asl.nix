{ callPackage, stdenv, fetchgit, python3, arm-mras }:

stdenv.mkDerivation {

  name = "test-asl";

  src = fetchgit {
    url = "https://github.com/alastairreid/mra_tools.git";
    rev = "1e1d46fb9c22f8b60458736610972ba0dbd2d179";
    sha256 = "18dknazzd58yxwd0i4z0k3ghhnilkixil7vw8k6mwm4b4dm6rzq0";
  };

  src_sysreg = arm-mras.raw.sysreg;
  src_aarch64 = arm-mras.raw.aarch64;
  src_aarch32 = arm-mras.raw.aarch32;

  buildInputs = [ python3 ];

  builder = builtins.toFile "builder.sh" ''
    . $stdenv/setup
    cp -r $src/* .

    mkdir -p v8.3
    cd v8.3

    tar zxf $src_sysreg
    tar zxf $src_aarch64
    tar zxf $src_aarch32

    tar zxf ISA_v83A_A64_xml_00bet5.tar.gz
    tar zxf ISA_v83A_AArch32_xml_00bet5.tar.gz
    tar zxf SysReg_v83A_xml-00bet5.tar.gz

    cd ..
    make all

    mkdir $out
    for f in $(find . -name '*.asl' -o -name '*.tag'); do
      mkdir -p $(dirname $out/$f)
      cp $f $out/$f
    done

    # patches

    echo "__builtin type string;" >> $out/extra.asl
    echo "__builtin type __RAM;"  >> $out/extra.asl

    sed -i 's|    // assert FALSE;|    foo();|'              $out/support/memory.asl 
    sed -i 's|            // Do nothing|            foo();|' $out/support/fetchdecode.asl
    sed -i 's|integer UInt(bits(N) x) = "cvt_bits_uint";||'  $out/support/fetchdecode.asl
    sed -i 's|integer SInt(bits(N) x) = "cvt_bits_sint";||'  $out/support/fetchdecode.asl
  '';

}
