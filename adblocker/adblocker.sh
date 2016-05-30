#!/bin/sh

############################

fail() {
	echo "$1" >&2 # print error message to stderr
	exit 1 # exit with non-success
}

# check if script is being run by root or with sudo / if not, fail
if [ ! "$(id -u)" -eq 0 ]; then
	fail "This must be run as root. Do 'sudo !!' to try again."
fi

# check if backup exists | if not, backup hosts file
[ ! -e /etc/hosts.bk ] && cp /etc/hosts /etc/hosts.bk

# create tmp directory + cd into directory if possible
[ ! -e /tmp/adblocker ] && mkdir /tmp/adblocker
cd /tmp/adblocker || fail "Couldn't access temp directory."

# wget filters
wget https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts

# block reddit tracking
echo "0.0.0.0  events.redditmedia.com" >> hosts
echo "0.0.0.0  out.reddit.com" >> hosts

# replace host file
cp /tmp/adblocker/hosts /etc/hosts

# cleanup
rm -r /tmp/adblocker
