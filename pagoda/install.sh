#! /bin/bash
# get latest version of code and prepare environment
echo Getting latest version of TimeTabs...
wget -a log.txt -t 3 --progress=dot http://tabedit.org/timetabs/timetabs-latest.gz

echo Unpacking TimeTabs...
tar -xzf timetabs-latest.gz >> log.txt

echo Moving config and default files...
mv pagoda/config.php config.php >> log.txt
mv pagoda/default pages >> log.txt

echo Cleaning up files...
rm timetabs-latest.gz >> log.txt
rm -r pagoda >> log.txt

echo Done! 
