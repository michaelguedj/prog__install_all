#!/bin/bash

#
# one supposes that the current directory contains
# others directories 
# some of them have an installer to install some programs
# the goal is to install these programs
#

for x in $(ls)
do
	# x is a common file
	if [ ! -d "$x" ]
	then 
		continue
	fi
	
	# x is a directory
	cd $x
	echo -e "\t\t\tin $x"

	if [ -e "INSTALL.sh" ]
	then 
		# there is an 'INSTALL.sh' installer
		echo "bash INSTALL.sh"  "  --> $x"
	fi

	if [ -e "INSTALL.SH" ]
	then 
		# there is an 'INSTALL.SH' installer
		echo "bash INSTALL.SH"  "  --> $x"

	fi

	cd ..

done

