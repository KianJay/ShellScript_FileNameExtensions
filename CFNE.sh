#!/bin/bash

# Input old ext & new ext
echo -n "Input old ext : "; read OLDEXT
echo -n "Input new ext : "; read NEWEXT

# Loop for all files *.OLDEXT
for OLDFILENAME in `ls *.$OLDEXT`
do
	ONLYFILENAME=`echo $OLDFILENAME | awk -F. '{print $1}'`	
	NEWFILENAME="$ONLYFILENAME.$NEWEXT"

	# NEWFILENAME=${OLDFILENAME%*$OLDEXT}$NEWEXT

	mv $OLDFILENAME $NEWFILENAME && echo "$OLDFILENAME >> $NEWFILENAME"
done
