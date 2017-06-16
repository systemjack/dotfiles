#!/bin/bash
# Ubuntu platform initialization

# abort if not Ubuntu
if ! python -mplatform | grep -qi Darwin; then 
	exit 1 
fi

# Debian apt-get install function to eliminate prompts and run quietly 
apt_get_install() {
  DEBIAN_FRONTEND=noninteractive sudo apt-get -y -o DPkg::Options::=--force-confnew install $@
}

# Update APT.
e_header "Updating APT"
sudo apt-get -qq -y update
DEBIAN_FRONTEND=noninteractive sudo apt-get -qq -y -o Dpkg::Options::="--force-confnew" dist-upgrade

# Install APT packages.
packages="
	ansible
	build-essential
	exuberant-ctags
	git
	htop
	id3tool
	libssl-dev
	tree
	python-dev
	python-virtualenv
	python-pip
	libpcre3
	libpcre3-dev
	ntp
	ntpdate
	libpq-dev
	libzmq3-dev
	sendemail
	postgresql-client-common
	redis-tools
	parallel
"

#apt_get_install $DEBS

#sudo pip install setuptools redis sider awscli boto psycopg2

