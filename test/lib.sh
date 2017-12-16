setup_dst () {
    attr="$1"
    if [ -n "$2" ]; then
        dst="$2"
    else
        dst="$attr"
    fi
    dst="$root/$dst"
    rm -rf "$dst"
    echo "$dst"
}

go_r() {
    attr="$1"
    dst="$(setup_dst "$@")"
    echo "$dst"
    nix-build "$here/standalone.nix" -A "$attr" -o "$dst"
}

go_rw() {
    attr="$1"
    store_path="$(nix-build "$here/standalone.nix" --no-out-link -A "$attr")"
    dst="$(setup_dst "$@")"
    echo "$store_path -> $dst"
    cp -r "$store_path" "$dst"
    chown -R nick "$dst"
    chmod -R 755 "$dst"
}
