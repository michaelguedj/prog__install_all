#!/bin/bash

##
## Name: howto.sh
## -- used for the program: "getmygithub"
## 
## Author: Dr M. GUEDJ
##
## Date: 20/11/2019
##
## License: MIT LICENSE 
## -- see the file MIT-LICENSE.txt
##

if [ -e prog__install_all ]
then 
	rm -fr prog__install_all
fi


git clone "https://github.com/michaelguedj/prog__install_all"
cd prog__install_all
bash install_all.sh
cd ..
today=$(date | sed "s/,//g" | awk '{ print $2_$3_$4 }')
mv prog__install_all "ARCHIVES_$today"

