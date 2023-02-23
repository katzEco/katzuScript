#/bin/bash

ROOT=$HOME/
FOLDER=server
SERVERFILE=$ROOT$FOLDER/paper.jar

if [ -f "$FILE" ]; then
  echo '"Server" Folder is already exist.'
  echo ' '
else
  mkdir -p -- "$ROOT$FOLDER"
  echo '"Server" Folder is created'
  echo ' '
fi

cd $ROOT$FOLDER

if [[ -f "$SERVERFILE" ]]; then
  echo "'Paper.jar is exist!'"
  echo ' '
else
  echo '"paper.jar" is not exist!'
  echo 'Prepare for loading..'
  echo ' '
  curl https://api.papermc.io/v2/projects/paper/versions/1.19.3/builds/418/downloads/paper-1.19.3-418.jar --output paper.jar
  echo ' '
  echo '"paper.jar" is finished loading'
  echo ' '
fi