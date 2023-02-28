#/bin/sh

####################
# Auth Call
echo 'Checking Auth..'
sudo clear

####################
# Setting Up "Homebrew"
echo 'Installing HomeBrew'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> $HOME/.zshrc
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> $HOME/.bashrc
echo ' '

####################
# Setting up main course
echo 'Installing Required software with brew'
echo ' '
brew install curl wget git zsh gh neovim tmux
echo ' '

####################
# Setting Up "omz"
echo 'Installing OhMyZSH..'
echo ' '
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo ' '

####################
# Setting Up "Welcome.sh"
echo 'Installing Welcome.sh..'
echo ' '
zsh -c "$(curl -s https://raw.githubusercontent.com/G2-Games/welcome.sh/main/install.sh)"
echo ' '

####################
# Setting Up "ZSH Hightlight Syntax"
echo 'Install ZSH Highlight Syntax..'
echo ' '
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo ' '

####################
# Installing Starship
curl -sS https://starship.rs/install.sh | sh
mkdir -p ~/.config && touch ~/.config/starship.toml
cd ~/.config
curl https://raw.githubusercontent.com/katzEco/katzuScript/main/source/dotfiles/starship.toml --output starship.toml

echo 'Downloading zsh dotfile'
echo ' '
cd ~
curl https://raw.githubusercontent.com/katzEco/katzuScript/main/source/dotfiles/zshLinux --output .zshrc
echo ' '

echo 'Finished!'

####################
# Recalling zsh
zsh