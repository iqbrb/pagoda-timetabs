#! /bin/bash
# get latest version of code and prepare environment
echo Getting latest version of TimeTabs...
curl --stderr log.txt -sL http://dl.dropbox.com/u/36253922/timetabs-latest.tar.gz | tar zx

echo Moving app files...
cd tijn72*
mv * ..
cd ..

echo Moving config file...
mv pagoda/config.php .

echo Cleaning up files...
rm -r tijn72*

echo Done! 
