#!/bin/sh

time=$(date "+%Y%m%d%H%M%S")
server=${1:-"local"}
prefix=$(echo $server | tr 'a-z' 'A-Z')_
HOST=${prefix}HOST
PORT=${prefix}PORT
USERNAME=${prefix}USERNAME
PASSWORD=${prefix}PASSWORD

if ! [ -d "report" ]
then
mkdir report
fi

HEAP="-Xms1g -Xmx1g -XX:MaxMetaspaceSize=256m"
jmeter -n -t test.jmx \
  -J HOST=${!HOST} \
  -J PORT=${!PORT} \
  -J USERNAME=${!USERNAME} \
  -J PASSWORD=${!PASSWORD} \
  -l log/$server-$time.txt \
  -e -o report/$server-$time