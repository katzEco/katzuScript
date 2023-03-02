# Installing SketchyBar
echo 'Installing SketchyBar..'
brew tap FelixKratz/formulae
brew install sketchybar

# Installing Fonts
echo 'Installing Hack Nerd Fonts'
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

echo 'Installing LINE Seed Sans TH'
brew tap katzEco/repo
brew install lineseed-th

# Setting up sketchybar config
echo 'Downloading SketchyBar Config'
cd ~/.config
wget https://github.com/dethMastery/SketchyBar/archive/refs/heads/main.zip
unzip main.zip
mv SketchyBar-main sketchybar

# Run SketchyBar
echo 'Running SketchyBar Service!'
brew services start sketchybar