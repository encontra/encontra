#!/bin/sh
underline=`tput smul`
normal=`tput sgr0`
modules=`grep -oP "(?<=\<module>).*(?=\</module>)" pom.xml`
for module in $modules
do
echo "\n${underline}$module${normal}"
cd $module
git status
cd ..
done
