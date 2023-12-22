#!/bin/bash

if [ $GIT_PATH ]; then
	echo "Syncing from Git"
	if [ -d /srv/.git ]; then
		cd /srv
		git pull
	else
		rm -r /srv/*
		git clone $GIT_PATH /srv
	fi
else
	echo "Environment variable GIT_PATH is not defined, not syncing from Git."
fi

if [ ! -d /srv/dnsmasq.d ]; then
	mkdir -p /srv/dnsmasq.d
fi

echo "Starting dnsmasq"
dnsmasq -k
