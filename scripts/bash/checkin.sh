#!/bin/bash
source ~/.bash_profile
Date >> /tmp/MyLaunchdTest.out
workon selenium
python checkin.py

