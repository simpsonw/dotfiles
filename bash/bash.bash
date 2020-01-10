set -o vi
export VISUAL=vim

k8s_aliases() {
    if hash kubectl 2>/dev/null; then
        source <(kubectl completion bash | sed s/kubectl/k/g)
        alias k=kubectl
    fi
}

clipencode() {
    cat $1 | base64 -w 0 | xclip -selection clipboard
}

# Aliases
alias pass-generate="pass generate -c"
k8s_aliases
