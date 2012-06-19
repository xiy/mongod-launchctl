#!/usr/bin/env bash

if [[ `whoami` != "root" ]]; then
  echo "Run me as root (sudo ./install.sh)!"
fi

echo "-- Setting up MongoDB to run at boot. This will restart Mongo! --"

sudo mkdir -p /usr/local/var/db/mongodb
sudo mkdir -p /usr/local/var/mongodb
sudo mkdir -p /usr/local/var/log
sudo touch /usr/local/var/log/mongodb.log

sudo cp org.mongo.mongod.plist /System/Library/LaunchDaemons
sudo chown root:wheel /System/Library/LaunchDaemons/org.mongo.mongod.plist
sudo launchctl stop org.mongo.mongod
sudo launchctl unload /System/Library/LaunchDaemons/org.mongo.mongod.plist
sudo launchctl load /System/Library/LaunchDaemons/org.mongo.mongod.plist
sudo launchctl start org.mongo.mongod

echo "-- Done! --"
