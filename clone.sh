#!/bin/sh
underline=`tput smul`
normal=`tput sgr0`
modules=`grep -oP "(?<=\<module>).*(?=\</module>)" pom.xml`
for module in $modules
do
echo "Cloning ${underline}$module${normal}"
git clone git@github.com:encontra/$module.git
done
