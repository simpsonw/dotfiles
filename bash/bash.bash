set -o vi
export VISUAL=vim
export NAFIGOS_PATH="$GOPATH/src/gitlab.com/cyverse/nafigos"
export PATH="$PATH:$NAFIGOS_PATH/tools/kind:$NAFIGOS_PATH/cmd"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

k8s_aliases() {
    if hash kubectl 2>/dev/null; then
        source <(kubectl completion bash | sed s/kubectl/k/g)
        alias k=kubectl
    fi
}

clipencode() {
    cat $1 | base64 -w 0 | xclip -selection clipboard
}

cpencode() {
    cat $1 | base64 -w 0 > $2
}

# Aliases
alias pass-generate="pass generate -c"
alias ncd="cd $GOPATH/src/gitlab.com/cyverse/nafigos"
alias tncd="cd $GOPATH/src/gitlab.com/simpsonw/test_nafigos"
alias gpcd="cd $GOPATH"
k8s_aliases
alias kminikube="k config use-context minikube"
alias kkind="k config use-context kind-kind"
alias kuser="k config use-context k3d-user-cluster"
alias kservice="k config use-context k3d-service-cluster"
alias kapply="find . -type d -name kubernetes -exec kubectl apply -Rf {} \;"
alias kdelete="find . -type d -name kubernetes -exec kubectl apply -Rf {} \;"
alias kwg="watch kubectl get"
source $DIR/kube-ps1/kube-ps1.sh
export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\](\$(kube_ps1))\n$ "
alias nafigos-env="source nafigos-env.sh"
alias nafigos-login="source nafigos-login.sh"
alias nafigos-admin-login="source nafigos-login.sh nafigos-admin nafigos-admin-password"
alias nafigos-user-login="source nafigos-login.sh nafigos-user nafigos-user-password"
alias nafigos-create-user="source nafigos-create-user.sh"
alias nafigos-create-admin-user="source nafigos-create-user.sh nafigos-admin nafigos-admin-password -admin"
alias nafigos-create-normal-user="source nafigos-create-user.sh nafigos-user nafigos-user-password"
