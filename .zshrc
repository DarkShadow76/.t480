source $HOME/applications/script/shell-mommy/shell-mommy.sh
precmd() { mommy "$PROMPT_COMMAND" }

PROMPT='%n@%m %1d %# '

# Habilitar tecla inicio y fin en la terminal
bindkey "^A" beginning-of-line
bindkey '\e[4~' end-of-line
bindkey '^H' delete-char
bindkey '^ ' autosuggest-accept

#Ignore Duplicate Commands
setopt HIST_IGNORE_ALL_DUPS


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# RANGER_LOAD_DEFAULT_RC=FALSE

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/applications/ZeroNet-linux-dist-linux64/:$PATH"
export PATH="$HOME/applications/pycharm-2023.1.3/bin:$PATH"
export PATH="$HOME/.rubies/ruby-3.2.2/bin:$PATH"
export PATH="$HOME/applications/clion-2023.1.4/bin:$PATH"
export PATH="$HOME/applications/DrRacket/bin:$PATH"
export PATH="$HOME/applications/node/bin:$PATH"
export PATH="$HOME/applications/dotnet/:$PATH"
export PATH="$HOME/applications/dbeaver/:$PATH"
export PATH="$HOME/applications/nuclear/:$PATH"
export PATH="$HOME/applications/dbeaver:$PATH"
export PATH="$HOME/applications/go/bin:$PATH"
export PATH="$HOME/applications/jdk-17.0.7/bin:$PATH"
export PATH="$HOME/applications/scripts/:$PATH"
export PATH="$HOME/applications/netbeans/bin:$PATH"
export PATH="$HOME/applications/tor-browser:$PATH"
export PATH="$HOME/applications/google-cloud-sdk/bin:$PATH"

export _JAVA_AWT_WM_NONREPARENTING=1
export BROWSER="firefox"
export EDITOR="nvim"
export GIT_EDITOR="nvim"
#export GOPATH="$HOME/applications/go"
#export JAVA_HOME="$HOME/home/tori/applications/jdk-17.0.7"

source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

# Plugins
source /home/tori/applications/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/tori/applications/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/tori/applications/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /home/tori/applications/plugins/zsh-sudo/sudo.plugin.zsh

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

alias cat='bat'
alias catn='/bin/cat'
alias catnl='bat --paging=never'
alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'
alias wall='cd ~/Pictures/Wallpapers'
alias pythonenv='$PWD/venv/bin/python'
alias pipenv='$PWD/venv/bin/pip'
alias pip3env='$PWD/venv/bin/pip3'
alias activateenv='$PWD/venv/bin/activate'

# alias routes /

alias pic='~/Pictures/'
alias doc='~/Documents/'
alias down='~/Downloads/'
alias app='~/applications/'
alias proj='~/Documents/Projects/'
alias dwm='~/.config/suckless/dwm-6.4/'
alias st='~/.config/suckless/st-0.9/'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/tori/applications/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/tori/applications/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/tori/applications/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/tori/applications/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
