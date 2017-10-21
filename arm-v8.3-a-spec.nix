{ stdenv, fetchurl }:

let

  spec = { name, rev, sha256 }: stdenv.mkDerivation {
    name = "arm-xml-${name}-0.${rev}";
    src = fetchurl {
      inherit name sha256;
      url = "https://developer.arm.com/-/media/developer/products/architecture/armv8-a-architecture/${name}.tar.gz?revision=${rev}&la=en";
    };
    builder = builtins.toFile "builder.sh" ''
      source $stdenv/setup
      mkdir $out
      cd $out
      tar -xf $src
      for f in *.tar.gz; do
        tar -xf $f
        rm $f
      done
    '';
  };

in {

  sysreg = spec {
    name = "ARMv83A-SysReg-00bet5";
    rev = "4905a576-484e-42d9-95c8-d4fc8a2371e6";
    sha256 = "0irpvz3snqxqj394y5wjfr1zxmmdb63sb1airbnpnncanbzabjjk";
  };

  a64 = spec {
    name = "A64_v83A_ISA_xml_00bet5";
    rev = "7a897785-9279-4c4f-ac3d-727b13d365ff";
    sha256 = "0gjgdih57r5w9f5pdn43jmsy316idz4wx4zwbicmd6p8hl5isdmk";
  };

  aarch32 = spec {
    name = "AArch32_v83A_ISA_xml_00bet5";
    rev = "3505a833-ff2c-41aa-8fdc-a9c04b4be81e";
    sha256 = "1ncgm9nshmsn23169lqgqi750v4kd9qag76mzw4xdpbdw2vdz1ki";
  };

}