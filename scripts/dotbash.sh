#/bin/bash
FILE=".bashrc"

cd ~

if [ -f $FILE ]; then
  echo $FILE 'is already exist.'
  echo 'backing up' $FILE'...' 
  mv ~/$FILE ~/$FILE.bak
  echo 'old' $FILE 'is safe!'
  echo ' '
else
  echo $FILE 'is not found'
  echo ' '
fi

echo 'Downloading new' $FILE
echo ' '
curl https://raw.githubusercontent.com/katzEco/katzuScript/main/source/dotfiles/bash --output .bashrc
echo ' '

echo $FILE 'is downloaded!'
echo 'Please run "source ~/.bashrc", "bash", or restart your terminal :)'