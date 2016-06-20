#!/bin/bash

trap "exit -1;" SIGQUIT SIGTERM SIGINT

#logrotate -vf ./logrotate-nginx.conf
#logrotate -v ./logrotate-nginx.conf

watch -n 1 "ls -l ../../docker/var/log/nginx/; logrotate -v ./logrotate-nginx.conf;"
