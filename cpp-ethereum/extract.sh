#!/bin/bash

if [ ! -d /extract ];then
	echo "We only extract stuff here man"
	sleep 5
	exit 1
fi

(cd extracted;tar -cf - .) | ( cd /extract;tar -xvf -)

exit 0
