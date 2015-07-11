#!/bin/bash

## Compile MTASC 1.15 Ubuntu 14.04 ##

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
sed 's/PCRE_VERSION = "8.33"/PCRE_VERSION = "8.37"/' -i Rakefile

# Start tools setup
rake setup

# Install
rake install

#Bye
echo 'All Done!'

exit 0

