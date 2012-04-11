#! /bin/bash
# get latest version of code and prepare environment
echo Getting latest version of TimeTabs...
curl -L http://dl.dropbox.com/u/36253922/timetabs-latest.tar.gz | tar zx

echo Moving app files...
cd tijn72*
mv * ..
cd ..

echo Moving config and default files...
mv pagoda/config.php config.php
mv pagoda/default pages

echo Cleaning up files...
rm -r tijn72*
rm -r pagoda

echo Done! 
