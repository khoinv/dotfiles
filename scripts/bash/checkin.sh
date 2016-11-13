#!/bin/bash
source ~/.bash_profile
Date >> /tmp/MyLaunchdTest.out
workon selenium
python ~/scripts/python/checkin.py

