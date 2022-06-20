if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    zoxide init fish | source
    helm completion fish | source
    fish_ssh_agent

    # Env
    set -Ux PYENV_ROOT "$HOME/.pyenv"
    # set -Ux PIPENV_PYTHON "$PYENV_ROOT/shims/python"
    set -gx SHELL /usr/bin/fish
    set -Ux KUBECONFIG "$HOME/.kube/config"
    set -gx PATH $PATH $HOME/.krew/bin
    set -gx PATH "$PYENV_ROOT/bin:$PATH"

    # Alias
    alias snano='sudo nano'
    alias svim='sudo vim'
    alias lzd='lazydocker'

    # AWS Alias
    alias saml='saml2aws login --session-duration=43200 --force --skip-prompt --profile=default'

    # Terraform Alias
    alias tf="terraform"
    alias tg="terragrunt"
    alias tf-docs='terraform-docs markdown . > docs/module_documentation.md'

    # Kubernetes Alias
    alias k='kubectl'
    alias kcc='kubectl config current-context'
    alias kci='kubectl cluster-info'
    alias kgc='kubectl config get-contexts'
    alias kh='kubectl rollout history deploy'
    alias ku='kubectl rollout undo deploy'
    alias ub='kubectl run ubuntu --image=ubuntu:21.04 --rm -it --restart=Never'
    alias bb='kubectl run busybox --image=busybox:1.28 --rm -it --restart=Never'

    # eval
    eval (pyenv init --path)
end

# Generated for envman. Do not edit.
test -s "$HOME/.config/envman/load.fish"; and source "$HOME/.config/envman/load.fish"

