#! /bin/bash
# get latest version of code and prepare environment
echo Getting latest version of TimeTabs...
wget -a log.txt -q -t 3 --progress=dot http://tabedit.org/timetabs/timetabs-latest.gz

echo Unpacking TimeTabs...
tar -xzf timetabs-latest.gz

echo Moving config and default files...
mv pagoda/config.php config.php
mv pagoda/default pages

echo Cleaning up files...
rm timetabs-latest.gz
rm -r pagoda

echo Done! 
