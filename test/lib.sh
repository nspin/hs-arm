expr='(import <nixpkgs> {}).callPackage ./. {}'

setup_dst () {
    attr="$1"
    if [ -n "$2" ]; then
        dst="$2"
    else
        dst="$attr"
    fi
    dst="$root/$dst"
    rm -f "$dst"
    echo "$dst"
}

go_r() {
    attr="$1"
    dst="$(setup_dst "$@")"
    echo "$dst"
    nix-build -E "$expr" -A "$attr" -o "$dst"
}

go_rw() {
    attr="$1"
    store_path="$(nix-build -E "$expr" --no-out-link -A "$attr")"
    dst="$(setup_dst "$@")"
    echo "$store_path -> $dst"
    cp -r "$store_path" "$dst"
    chown -R nick "$dst"
    chmod -R 755 "$dst"
}
