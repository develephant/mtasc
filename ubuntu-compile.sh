#!/bin/bash

## Compile MTASC 1.15 Ubuntu 14.04
## GNU/Linux 3.13.0-52-generic x86_64 

#Clean?
if [ $1 == 'clean' ];;
  rm -rf /usr/local/src/*
  rm /usr/local/bin/mtasc
  rm -rf /use/local/bin/std*
fi

# Update repos
apt-get update

# Install tools
apt-get install -y \
  build-essential \
  git \
  libpcre3 \
  libpcre3-dev \
  m4 \
  rake \
  zlib1g \
  zlib1g-dev

# Working DIR
cd /usr/local/src

# Git source
git clone https://github.com/develephant/mtasc.git

# Move to source dir
cd mtasc

# Update version
#sed 's/PCRE_VERSION = "8.33"/PCRE_VERSION = "8.37"/' -i Rakefile

# Start tools setup
rake setup

# Install
rake install

#Bye
echo 'All Done!'

exit 0

