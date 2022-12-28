# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# RANGER_LOAD_DEFAULT_RC=FALSE

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/applications/pycharm-2022.3/bin:$PATH"
export PATH="$HOME/applications/clion-2022.3/bin:$PATH"
export PATH="$HOME/applications/DrRacket/bin:$PATH"
export PATH="$HOME/applications/node/bin:$PATH"
export PATH="$HOME/Downloads/nuclear/:$PATH"

# Created by newuser for 5.9
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

alias cat='bat'
alias catn='/bin/cat'
alias catnl='bat --paging=never'
alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
