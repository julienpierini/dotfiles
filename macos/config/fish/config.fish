status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source
if status is-interactive
    ### Env var ###
    set -x PYENV_ROOT $HOME/.pyenv
    set -x PATH $PYENV_ROOT/shims $PYENV_ROOT/bin $PATH
    set -x GOOGLE_APPLICATION_CREDENTIALS $HOME/.config/gcloud/legacy_credentials/jpierini@meilleursagents.com/adc.json
    set -x GOOGLE_ENCRYPTION_KEY $HOME/Documents/Projets/MA/string_to_not_erase
    set -x ANSIBLE_ROOT_FOLDER $HOME/Documents/Projets/MA/infra/MA-Infra/ansible/
    set -x VAULTSH_PASSWORD_FILES $HOME/Documents/Projets/MA/ansiblevault/dev.txt $HOME/Documents/Projets/MA/ansiblevault/ops.txt
    set -x ANSIBLE_VAULT_PASSWORD_FILE $HOME/Documents/Projets/MA/ansiblevault/dev.txt
    set -x ANSIBLE_VAULT_IDENTITY_LIST $HOME/Documents/Projets/MA/ansiblevault/dev.txt,$HOME/Documents/Projets/MA/ansiblevault/ops.txt
    set -x MA_FOLDER $HOME/Documents/Projets/MA/infra/
    set -x GEGEN_DIR $HOME/Documents/Projets/MA/infra/MA-Infra/gegen
    set -x GEGEN_ANSIBLE_DIR $HOME/Documents/Projets/MA/infra/MA-Infra/ansible
    set -x HELM_EXPERIMENTAL_OCI 1
    set -x GOPATH $HOME/go
    set -gx PATH $PATH $HOME/.krew/bin

    # pyenv
    pyenv rehash

    ### Alias ###
    # Git
    alias ga="git add ."
    alias gc="git checkout"
    alias gca="git commit --amend"
    alias gpf="git push --force-with-lease"
    alias gr="cd $(git rev-parse --show-toplevel)"
    
    # Kubernetes
    alias k="kubectl"
    alias kbb="kubectl run jpierini-busybox --image=busybox --rm  -it --restart=Never /bin/sh"
    alias kac="kubectl run jpierini-busybox --image=alpine/curl --rm  -it --restart=Never /bin/sh"
    # Docker
    alias dclear="docker rm $(docker ps -a -q)"

    # Gcloud
    alias glogin="gcloud auth login --no-launch-browser"

    # AWS
    alias alogin="aws sso login"

    # Terraform
    alias tf="terraform"

    #terragrunt
    alias tg="terragrunt"

    # Pre-commit
    alias pcinit="pre-commit install"
    alias pcrun="pre-commit run -a"

    ### Source ###
    bass source $HOME/Documents/Projets/MA/Infra/MA-Infra/tools/gssh/gssh_aliases.sh
    starship init fish | source
    zoxide init fish | source
    yq shell-completion fish | source
    helm completion fish | source
    source ~/.iterm2_shell_integration.fish
end
