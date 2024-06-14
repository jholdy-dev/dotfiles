# Executar asdf
set _asdf_old_dir $PWD

# Definir aliases
alias ls="exa --icons"
alias bat="bat --style=auto"
alias tn="tmux new -s"
alias ta="tmux a -t"
alias tl="tmux ls"
alias vim="nvim"
alias vi="nvim"

# Exportar variáveis de ambiente
set -x ANDROID_HOME $HOME/Library/Android/sdk

set -x PATH $PATH $ANDROID_HOME/emulator $ANDROID_HOME/platform-tools

# Atualizar PATH para o Google Cloud SDK
if test -f $HOME/.gcloud-sdk/path.fish.inc
    source $HOME/.gcloud-sdk/path.fish.inc
end

if type -q eza
    alias ll "eza -l -g --icons"
    alias lla "ll -a"
end

# Fzf
set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"
set -g FZF_LEGACY_KEYBINDINGS 0
