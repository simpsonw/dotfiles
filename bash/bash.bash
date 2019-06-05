set -o vi
export VISUAL=vim

k8s_aliases() {
    if hash kubectl 2>/dev/null; then
        source <(kubectl completion bash | sed s/kubectl/k/g)
        alias k=kubectl
    fi
}

# Aliases
alias pass-generate="pass generate -c"
k8s_aliases
