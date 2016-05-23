#!/bin/bash

############################

# backup hosts file
cp /etc/hosts /etc/hosts.bk

# create tmp directory + cd into directory
mkdir /tmp/adblocker/
cd /tmp/adblocker/

# wget filters
wget https://easylist.github.io/easylist/easylist.txt
wget https://easylist.github.io/easylist/easyprivacy.txt

# merge into single file
cat easylist.txt easyprivacy.txt >> hosts

# replace host file
cp /tmp/adblocker/hosts /etc/hosts

# cleanup
rm -rf /tmp/adblocker
