#!/bin/bash  
rm /tmp/k4kpk.jekyll.??? 2> /dev/null
rm /tmp/k4kpk.github.io.??? 2> /dev/null
cd /home/kevin/sites/k4kpk.github.io  
# Need to give it a few seconds to allow docker daemon to start
sleep 5
/usr/local/bin/docker-compose up > /tmp/k4kpk.github.io.out 2>/tmp/k4kpk.github.io.err

