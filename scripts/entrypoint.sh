#!/bin/bash

if [ $GIT_PATH ]; do
	echo "Syncing from Git"
	if [ -d /srv/.git ]; then
		cd /srv
		git pull
	else
		git clone $GIT_PATH /srv
	fi
else
	echo "Environment variable GIT_PATH is not defined, not syncing from Git."
fi

echo "Starting dnsmasq"
dnsmasq -k
