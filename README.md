# OS X Launchctl Item for MongoDB
This is a simple launchctl item to start the MongoDB daemon at boot on OS X, adapted from Andrei Railean's <https://github.com/AndreiRailean/MongoDB-OSX-Launchctl> to work with homebrew.

## Installation
You'll need:

- homebrew (mxcl/homebrew/wiki/installation)
- root access

Install the latest mongo recipe through homebrew:

    brew install mongo

And then run `sudo ./install.sh` from within the repo dir and the script will handle the rest.

**Note**: If you've already installed MongoDB through other means, make sure you edit the paths in the `org.mongo.mongod.plist` file to match your install locations. The same goes for your data dir (the script assumes a location of `/usr/local/var/db/mongodb`)

## Uninstallation
Run the following command to nuke the launchctl item:

    sudo rm -rf /System/Library/LaunchDemons/org.mongo.mongod.plist
