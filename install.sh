#!/bin/bash

<<Disclaimer
This script is writtent to install
any package on this server
Disclaimer

apt-get -y update
apt-get -y install $1
systemctl restart docker

test=`systemctl status docker | grep running | wc -l`
if [[ $test -ge 1 ]]; then
	echo "Docker service is in running state"
else
	echo "check the installation part"
fi
