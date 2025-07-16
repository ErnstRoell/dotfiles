export XDG_CONFIG_HOME="/home/ernst/.config"

# Path to Neovim 
export PATH="$PATH:/opt/nvim-linux-x86_64/bin:$HOME/.local/bin"
export PATH="$PATH:/usr/local/texlive/2025/bin/x86_64-linux"

export CUDA_HOME="/usr/local/cuda"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64"
export PATH="$PATH:$CUDA_HOME/bin"
export XLA_FLAGS="--xla_gpu_cuda_data_dir=/usr/local/cuda"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/:/usr/lib/:/usr/lib64/:/home/ernst/.local/lib

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Setup fzf
# ---------
if [[ ! "$PATH" == */home/ernst/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/ernst/.fzf/bin"
fi
source <(fzf --zsh)


##############################################################
### Aliases
##############################################################

alias ls='eza --long --tree --icons --level=1'
alias cat='bat'
alias v='nvim'
alias sp='cd $(fd -t d . /mnt/c/users/ernst/Documents | fzf)' 
alias sd='cd $(fd -t d . /mnt/data | fzf)' 
alias fo='nvim $(fd -t d . . | fzf)' 
alias python='/home/ernst/py3nvim/bin/python3'
# alias ipython3='/home/ernst/py3nvim/bin/ipython3'
alias du='dust -d 1'
alias personal='cd /mnt/c/users/ernst/Documents/01-Personal'
alias work='cd /mnt/c/users/ernst/Documents/02-Work'
alias notes='cd /mnt/c/users/ernst/Documents/03-Notes'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=500
SAVEHIST=500
HISTDUP=erase
unsetopt beep
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups



# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ernst/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'


autoload -Uz compinit
compinit
# End of lines added by compinstall
autoload -U compinit && compinit

##############################################################
### Starship 
##############################################################

eval "$(starship init zsh)"

##############################################################
##############################################################


##############################################################
###  
##############################################################

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

##############################################################
### Terminal Key Bindings 
##############################################################

# Search history Alt-j and Alt-h
bindkey -v
bindkey '^j' history-search-forward
bindkey '^h' history-search-backward
bindkey '^l' autosuggest-accept
bindkey '^ ' autosuggest-execute


FPATH="$HOME/.config/completions:$FPATH"
autoload -Uz compinit
compinit




