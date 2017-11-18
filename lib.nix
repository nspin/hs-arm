{ stdenv }: {

  mergeFrom = parent: children: dst: stdenv.mkDerivation {
    name = "${dst.name}-merged";
    inherit parent children dst;
    builder = builtins.toFile "builder.sh" ''
      source $stdenv/setup
      mkdir $out
      cp -rT $dst $out
      for c in $children; do
        cp -r $parent/$c $out
      done
    '';
  };

}
