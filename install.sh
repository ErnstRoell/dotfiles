# Install base
sudo apt update 
sudo apt upgrade
sudo apt install zsh
sudo apt install build-essential
sudo apt install unzip 
sudo apt install fd-find

# Rip grep
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/14.1.0/ripgrep_14.1.0-1_amd64.deb
sudo dpkg -i ripgrep_14.1.0-1_amd64.deb

# Fonts
curl -fsSL https://raw.githubusercontent.com/getnf/getnf/main/install.sh | bash

gnf -i "Ubuntu Nerd Font"

# # Install Rust
# curl https://sh.rustup.rs -sSf | sh

# Install nvm 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# # Add pyright
# cargo add pyright

npm install -g tree-sitter-cli
npm install -g pyright


chsh -s $(which zsh)

# Install nvim 
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

# Github cli 

(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
	&& sudo mkdir -p -m 755 /etc/apt/keyrings \
        && out=$(mktemp) && wget -nv -O$out https://cli.github.com/packages/githubcli-archive-keyring.gpg \
        && cat $out | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
	&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
	&& sudo apt update \
	&& sudo apt install gh -y

git config --global user.email "ernstroell@gmail.com"
git config --global user.name "Ernst Roell"



