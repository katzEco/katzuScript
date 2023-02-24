#/bin/bash

ROOT=$HOME/
FOLDER=server
SERVERFILE=$ROOT$FOLDER/paper.jar
PAPER=https://api.papermc.io/v2/projects/paper/versions/1.19.3/builds/418/downloads/paper-1.19.3-418.jar

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

  curl $PAPER --output paper.jar
  
  echo ' '
  echo '"paper.jar" is finished loading'
  echo ' '

  echo 'Creating "EULA.txt" ..'
  touch eula.txt
  echo "eula=true" > eula.txt
  echo '"EULA.txt" is created!'
  echo ' '
fi

if ! command -v java &> /dev/null; then
  echo '"java" is not found'
  echo 'Please install "java" first'
  echo ' '
  exit
else
  echo '"Java" is installed'
  echo ' '
fi

echo 'Enter your RAM Capacity (in GB) : '
read RAMSIZE
USAGERAM=$((RAMSIZE * 1024))
echo ' '

if [[ -f "$ROOT$FOLDER/server.properties" ]]; then
  echo '"server.properties" is already exist.'
else
  echo '"server.properties" is not exist'
  echo 'Setting up "server.properties"..'
  echo ' '

  wget https://raw.githubusercontent.com/katzEco/katzuScript/main/paper/server.properties

  echo '"server.properties" is set up successful!'
  echo ' '
fi

echo 'Running Server..'
echo ' '

RAMCONF='java -Xms'$USAGERAM'M -Xmx'$USAGERAM'M -jar paper.jar --nogui'
# echo "$RAMCONF"
$RAMCONF