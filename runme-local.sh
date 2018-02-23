#!/bin/bash  
rm /tmp/k4kpk.jekyll.???
rm /tmp/k4kpk.github.io.???
cd /Users/kevin/Sync/Sites/k4kpk.github.io  
# Need to give it a few seconds to allow docker daemon to start
sleep 5
/usr/local/bin/docker-compose up > /tmp/k4kpk.github.io.out 2>/tmp/k4kpk.github.io.err

