#!/bin/bash

# Install needed dependencies to run on Termux
# Also compiling for Termux

echo "Please make sure, that you've installed Termux from the F-Droid store. The Playstore version is outdated!"
sleep 2
apt-get update
echo "NOTE: If you get asked some questions, just press N and continue"
apt-get full-upgrade -y
apt-get install python3 python-pip git wget
git clone https://github.com/EchterAlsFake/Porn_Fetch
cd Porn_Fetch
cd src
pyinstaller -F cli.py
cd dist
mv cli.py Porn_Fetch
chmod +x Porn_Fetch
echo "Porn Fetch is now in the dist directory. Run it with ./Porn_Fetch"