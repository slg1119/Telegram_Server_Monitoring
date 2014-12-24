#!/bin/sh
PING=`ping -c5 $1 | grep packets`
echo $PING > /home/Username/server/ping.txt
