#!/bin/bash

############################

# check if backup exists | if not, backup hosts file
[ ! -e /etc/hosts.bk ] && cp /etc/hosts /etc/hosts.bk

# create tmp directory + cd into directory
mkdir /tmp/adblocker/
cd /tmp/adblocker/

# wget filters
wget https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts

# block reddit tracking
echo "0.0.0.0  events.redditmedia.com" >> hosts
echo "0.0.0.0  out.reddit.com" >> hosts

# replace host file
cp /tmp/adblocker/hosts /etc/hosts

# cleanup
rm -rf /tmp/adblocker
