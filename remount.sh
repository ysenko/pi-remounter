#! /usr/bin/env bash

set -e

SLEEP_TIME=60

declare MONITORED_FS=(
	"/mnt/nas/downloads"
	"/mnt/nas/media"
)

remount () {
	for mountpoint in "${MONITORED_FS[@]}"; do
		findmnt --mountpoint $mountpoint > /dev/null || mount $mountpoint
	done
}

while :
do
	remount
	sleep 60
done
