#/bin/sh

####################
# Auth Call
echo 'Auth test..'
echo ' '
sudo clear

cd ~

####################
# Installing MAIN Course
echo 'Installing MAIN Software..'
echo ' '
sudo apt update || sudo apt upgrade -y
sudo apt install curl wget git zsh neovim tmux -y
echo ' '

####################
# Setting Up "Homebrew"
echo 'Install HomeBrew..'
echo ' '
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo ' '

####################
# Setting Up "omz"
echo 'Install OhMyZSH..'
echo ' '
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo ' '

####################
# Setting Up "Welcome.sh"
echo 'Installing welcome.sh..'
echo ' '
zsh -c "$(curl -s https://raw.githubusercontent.com/G2-Games/welcome.sh/main/install.sh)"
echo ' '

####################
# Setting Up "ZSH Hightlight Syntax"
echo 'Install Highlight Syntax..'
echo ' '
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo ' '

####################
# Installing Starship
echo 'Install Starship..'
echo ' '
curl -sS https://starship.rs/install.sh | sh
mkdir -p ~/.config && touch ~/.config/starship.toml
cd ~/.config
curl https://raw.githubusercontent.com/katzEco/katzuScript/main/source/dotfiles/starship.toml --output starship.toml
echo ' '

echo 'Downloading zsh dotfile..'
echo ' '
cd ~
curl https://raw.githubusercontent.com/katzEco/katzuScript/main/source/dotfiles/zshLinux --output .zshrc
echo ' '

echo 'Finished!'

####################
# Recalling zsh
zsh