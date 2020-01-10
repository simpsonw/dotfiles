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
alias ncd="cd $GOPATH/src/gitlab.com/cyverse/nafigos"
alias gpcd="cd $GOPATH"
k8s_aliases
alias kminikube="k config use-context minikube"
alias kkind="k config use-context kind-kind"
