#! /bin/bash
# get latest version of code and prepare environment
echo Getting latest version of TimeTabs...
curl -L https://github.com/tijn72/timetabs/tarball/master | tar zx
cd tijn72*
mv * ..

echo Moving config and default files...
mv pagoda/config.php config.php
mv pagoda/default pages

echo Cleaning up files...
rm -r tijn72*
rm -r pagoda

echo Done! 
