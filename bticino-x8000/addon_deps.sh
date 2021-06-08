#!/bin/bash

apk add python3 py3-pip mosquitto-clients
pip3 install --upgrade pip wheel setuptools
#pip3 install --trusted-host pypi.python.org -r requirements-addon.txt
# Remove packages we only needed for installation
#apk del linux-headers libc-dev libffi-dev python3-dev gcc
