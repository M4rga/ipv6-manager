#!/bin/bash

set -e

status=$(ip -6 a)

if [ "$status" == "" ]; then 
	echo "IPv6 is DISABLED"
else
	echo "IPv6 is ENABLED"
fi
