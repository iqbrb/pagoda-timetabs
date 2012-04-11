#! /bin/bash
# get latest version of code and prepare environment
clear

echo -en '\E[47;32m'"\033[1mS\033[0m"
echo Getting latest version of TimeTabs...
tput sgr0

wget http://tabedit.org/timetabs/timetabs-latest.gz

echo -en '\E[47;32m'"\033[1mS\033[0m"
echo Unpacking TimeTabs...
tput sgr0

tar -xzf timetabs-latest.gz

echo -en '\E[47;32m'"\033[1mS\033[0m"
echo Moving config and default files...
tput sgr0

mv pagoda/config.php config.php
mv pagoda/default pages

echo -en '\E[47;32m'"\033[1mS\033[0m"
echo Cleaning up files...
tput sgr0

rm timetabs-latest.gz
rm -r pagoda

echo -en '\E[47;32m'"\033[1mS\033[0m"
echo Done! 
tput sgr0
