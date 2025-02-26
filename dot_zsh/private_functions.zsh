# Colormap
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

# Export AGE Key
export_age_key() {
    if [ -z "$SOPS_AGE_KEY" ]; then
        export SOPS_AGE_KEY=$(op read op://Personal/sops_age_key/key.txt)
    fi
}

# SOPS encrypt with AGE in place
encrypt_sops_age_inplace() {
    if [ -z "$1" ]; then
        echo "Usage: encrypt_with_sops_age_inplace <file>"
        return 1
    fi

    if grep -q "ENC\[" "$1"; then
        echo "Error: The file is already encrypted."
        return 1
    fi
    
    local age_key
    age_key=$(cat "$SOPS_AGE_KEY_FILE" | grep -oP "public key: \K(.*)")
    
    sops --encrypt --age "$age_key" --encrypted-regex '(data|stringData)$' --in-place "$1"
}

# SOPS decrypt with AGE in place
decrypt_sops_age_inplace() {
    if [ -z "$1" ]; then
        echo "Usage: decrypt_with_sops_age_inplace <file>"
        return 1
    fi
    
    local age_key
    age_key=$(cat "$SOPS_AGE_KEY_FILE" | grep -oP "public key: \K(.*)")
    
    sops --decrypt --age "$age_key" --encrypted-regex '(data|stringData)$' --in-place "$1"
}

# SOPS encrypt with AGE with filetype
encrypt_sops_age_filetype() {
    if [ -z "$1" ]; then
        echo "Usage: encrypt_with_sops_age_filetype <file>"
        return 1
    fi

    if grep -q "ENC\[" "$1"; then
        echo "Error: The file is already encrypted."
        return 1
    fi

    local age_key
    age_key=$(cat "$SOPS_AGE_KEY_FILE" | grep -oP "public key: \K(.*)")

    sops --encrypt --age "$age_key" -i "$1"
}

# SOPS decrypt with AGE with filetype
decrypt_sops_age_filetype() {
    if [ -z "$1" ]; then
        echo "Usage: decrypt_with_sops_age_filetype <file>"
        return 1
    fi

    local age_key
    age_key=$(cat "$SOPS_AGE_KEY_FILE" | grep -oP "public key: \K(.*)")

    sops --decrypt --age "$age_key" -i "$1"
}

# Create a alpine test box on kubernetes in the corresponding namespace and open its shell; its being destroyed afterwards
createkubernetesalpinetest() {
  local ns="$1"
  kubectl --namespace "$ns" run alpine-test \
    --image alpine --restart Never --rm --stdin --tty \
    -- sh
}
