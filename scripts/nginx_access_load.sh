#!/bin/bash

trap "exit -1;" SIGQUIT SIGTERM SIGINT

while true; do
	date +'%D %T';
	ab -c 1 -n 100 http://test.dev/ > /dev/null 2>&1;
done
