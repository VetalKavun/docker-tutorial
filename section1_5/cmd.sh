#!/bin/bash
echo "starting apache"
apachectl -DFOREGROUND

if [ "$?" = 0]; then
	echo "this went good"
else 
	echo "there was an error"
fi
