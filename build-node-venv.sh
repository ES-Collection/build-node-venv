#!/bin/bash

# current folder
cd "${0%/*}"

# check requirements
command -v virtualenv >/dev/null 2>&1 || { echo >&2 "I require virtualenv but it's not installed. See http://docs.python-guide.org/en/latest/dev/virtualenvs/ Aborting."; exit 1; }

# clear env if there
if [ -e "./.venv" ] ; then
    # gotcha auto env!
	rm -rf "./.venv" && deactivate
fi

# create node env
virtualenv .venv && source .venv/bin/activate

# Add trusted-host
printf "[global]\nindex-url=http://mirrors.aliyun.com/pypi/simple/\n" >> $VIRTUAL_ENV/pip.conf
printf "[install]\ntrusted-host=mirrors.aliyun.com\n" >> $VIRTUAL_ENV/pip.conf

# add auto env
pip install autoenv && echo "source `which activate.sh`" >> ~/.bashrc

# pip install nodeenv
pip install nodeenv && nodeenv -p

# running node now
npm config set strict-ssl false

echo "Now go like install some modules!"
npm install && npm update
