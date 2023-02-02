#!/bin/bash
writefile=$1
writestr=$2 
if [ $# -ne 2 ]
then
	echo "Error: Number of arguments required = 2"
	exit 1
else
    mkdir -p "${writefile%/*}"
    touch "${writefile}"
    echo "${writestr}" > "${writefile}"
    if [ ! -f "${writefile}" ]
    then
        echo "Error: File cannot be created."
        exit 1
    fi
fi