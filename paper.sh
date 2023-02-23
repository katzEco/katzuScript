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

  if [[ -f "$ROOT$FOLDER/eula.txt" ]]; then
    echo '"EULA.txt" is exist!'
    echo ' '
  else
    echo '"EULA.txt" is Not Found!'
    echo 'Creating "EULA.txt" ..'
    touch eula.txt
    echo "eula=true" > eula.txt
    echo '"EULA.txt" is created!'
    echo ' '
  fi
else
  echo '"paper.jar" is not exist!'
  echo 'Prepare for loading..'
  echo ' '

  curl https://api.papermc.io/v2/projects/paper/versions/1.19.3/builds/418/downloads/paper-1.19.3-418.jar --output paper.jar
  
  echo ' '
  echo '"paper.jar" is finished loading'
  echo ' '

  echo 'Creating "EULA.txt" ..'
  touch eula.txt
  echo "eula=true" > eula.txt
  echo '"EULA.txt" is created!'
  echo ' '
fi

if ! command -v java &> /dev/null then
  echo '"java" is not found'
  echo 'Please install "java" first'
  echo ' '
  exit
fi
