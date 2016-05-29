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
wget https://www.malwaredomainlist.com/hostslist/hosts.txt -O malwaredomainslist.txt

# change all 127.0.0.1s to 0.0.0.0
sed -i 's/127.0.0.1/0.0.0.0/g' malwaredomainslist.txt

# merge into single file
cat easylist.txt easyprivacy.txt malwaredomainslist.txt >> hosts

# block reddit tracking
echo "0.0.0.0  events.redditmedia.com" >> hosts
echo "0.0.0.0  out.reddit.com" >> hosts

# replace host file
cp /tmp/adblocker/hosts /etc/hosts

# cleanup
rm -rf /tmp/adblocker
