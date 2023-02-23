#/bin/bash

ROOT=$HOME/
FOLDER=server
SERVERFILE=$ROOT$FOLDER/paper.jar

# if ! [ -x "$(command -v node -v)" ]; then
#   echo '"Node" is not installed'
#   echo 'Trying to install "Node"'
# else
#   echo '"Node" is already install'
#   echo ''
#   echo 'Try checking "hydr"'
#   echo ''

#   if ! [ -x "$(command -v npx hydr)" ]; then
#     echo '"hydr" is not installed'
#     echo ''
#     echo 'Trying to install "hydr"'
#     sudo npm i -g hydr
#   else
#     echo '"hydr" is already exist!'
#     echo 'Preparing for download paper.jar..'
#   fi
# fi

echo ' '

if [ -f "$FILE" ]; then
  echo '"Server" Folder is already exist.'
else
  mkdir -p -- "$ROOT$FOLDER"
  echo '"Server" Folder is created'
fi

cd $ROOT$FOLDER

# if [[ -f "$SERVERFILE" ]]; then
#   echo "'Paper.jar is exist!'"
# else
  
# fi