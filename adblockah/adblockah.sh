#!/bin/sh
###
# Script that modifies the /etc/hosts file to blacklist malicious and
# advertising-related domains.
###

# Check if script is being run by root or with sudo, if not, then fail
if [ ! "$(id -u)" -eq 0 ]; then
	# Print error message
	echo "This must be run as root. Do 'sudo !!' to try again." >&2
	exit 1 # Exit with error status
fi

# Make a backup if one doesn't already exist
[ ! -e /etc/hosts.bk ] && cp /etc/hosts /etc/hosts.bk

# Download the new hosts file, overwriting the original
wget -nv -O /etc/hosts -- \
https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts

# Append reddit's tracking addresses
echo "0.0.0.0 events.redditmedia.com" >> /etc/hosts
echo "0.0.0.0 out.reddit.com" >> /etc/hosts
