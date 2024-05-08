# Colormap
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

encrypt_sops_age() {
    if [ -z "$1" ]; then
        echo "Usage: encrypt_with_sops <file>"
        return 1
    fi
    
    local age_key
    age_key=$(cat "$SOPS_AGE_KEY_FILE" | grep -oP "public key: \K(.*)")
    
    sops --encrypt --age "$age_key" --encrypted-regex '(data|stringData)$' --in-place "$1"
}

decrypt_sops_age() {
    if [ -z "$1" ]; then
        echo "Usage: encrypt_with_sops <file>"
        return 1
    fi
    
    local age_key
    age_key=$(cat "$SOPS_AGE_KEY_FILE" | grep -oP "public key: \K(.*)")
    
    sops --decrypt --age "$age_key" --encrypted-regex '(data|stringData)$' --in-place "$1"
}