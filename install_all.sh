#!/bin/bash

#
##
## Name: getmygithub
## 
## Author: Dr M. GUEDJ
##
##
## Description: 
##
##	___ Download or/and install the programs 
##	___ existing in the github of: michaelguedj;
##	___ -- the downloaded repositories are actually 
##  ___ ___ specified in the the file:
##	___ ___ ___ "github__michaelguedj.txt".
## 
##  
##  HOW TO:
##  ___ Run the script "howto.sh".
##
##  Comments: 
##  One supposes that the current directory contains
##  others directories;
##  some of them have an installer to install some programs;
##  the goal is to install these programs.
##
## Version: 0.1
##
## Date: 20/11/2019
##
## License: MIT LICENSE 
## -- see the file MIT-LICENSE.txt
##


bash getmygithub.sh michaelguedj

cd archives__github__michaelguedj

for x in $(ls)
do
	# x is a common file
	if [ ! -d "$x" ]
	then 
		continue
	fi
	
	# x is a directory
	cd $x
	
	# test if the programm is already installed
	# one considers implicetely that:
	# i/   the directories of the programs are name "prog___<name>";
	# ii/  the programs can be installed with 123tools:
	#	   (see the github's page of michaelguedj);
    # iii/ the names choosen for the installation are "<name>"; 
    #      and therefore, are stored in the directory "~/.123/<name>".	
	name_prog=$(echo $x | sed "s/prog__//")
	if [ -e "$HOME/.123/$name_prog" ]
	then
		bash "$HOME/.123/$name_prog/UNINSTALL.sh"
	fi


	if [ -e "INSTALL.sh" ]
	then 
		# there is an 'INSTALL.sh' installer
		bash "INSTALL.sh"
	fi

	if [ -e "INSTALL.SH" ]
	then 
		# there is an 'INSTALL.SH' installer
		bash "INSTALL.SH"
	fi

	cd ..

done

