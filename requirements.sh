#!/bin/bash
apt install git python -y
apt install nodejs npm -y
npm install -g bash-obfuscate

wget -q -O kf.py "https://github.com/zhets/enc/raw/main/kf.py"
python3 kf.py
