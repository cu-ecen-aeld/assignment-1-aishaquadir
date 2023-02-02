#!/bin/bash
filesdir=$1
searchstr=$2
numfiles=$(find ${filesdir} -type f | wc -l)
occurrences=$(grep -r ${searchstr} ${filesdir} | wc -l)
if [ $# -ne 2 ]
then
	echo "Error: Number of arguments required = 2"
	exit 1
elif [ ! -d ${filesdir} ]
then
	echo "Error: ${filesdir} does not represent a directory on the filesystem."
	exit 1
else
	echo "The number of files are ${numfiles} and the number of matching lines are ${occurrences}."
fi
