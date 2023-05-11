#source $HOME/applications/shell-mommy/shell-mommy.sh
#precmd() { mommy "$PROMPT_COMMAND" }

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
export PATH="$HOME/applications/pycharm-2022.3/bin:$PATH"
export PATH="$HOME/applications/clion-2022.3/bin:$PATH"
export PATH="$HOME/applications/DrRacket/bin:$PATH"
export PATH="$HOME/applications/node/bin:$PATH"
export PATH="$HOME/applications/nuclear/:$PATH"
export PATH="$HOME/applications/ghidra_10.2.3_PUBLIC/:$PATH"
export PATH="$HOME/applications/jdk-17.0.6/bin:$PATH"
export PATH="$HOME/applications/scripts/:$PATH"
export PATH="$HOME/applications/netbeans/bin:$PATH"
export TERMINAL=st
export _JAVA_AWT_WM_NONREPARENTING=1

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

