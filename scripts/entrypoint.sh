#!/bin/sh

echo nQuake Server Logs Backup Service

while(true)
do
  date
  echo Backup of demos
  rsync -azh /server/demos/ /backups/demos/
  echo Backup of logs
  tar cfj /backups/logs/"$(date '+%Y-%m-%d_%H-%M').tar.bz2" -C /server/logs/ .
  echo Sleeping
  sleep 3600
done
