export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="$PATH:~/.local/bin"
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# ln -s $(which fdfind) ~/.local/bin/fd
