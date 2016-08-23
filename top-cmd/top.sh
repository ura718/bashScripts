#!/bin/bash


DATE=`date +"%m%d%Y_%H:%M"`

# How long top should run in total
# hourly time computed in seconds
fiveMIN=250	# 5  min
quarterHR=750	# 15 min
halfHR=1800	# 30 min
oneHR=3600      # 1  hr
twoHR=7200      # 2  hrs
threeHR=10800   # 3  hrs
halfDay=43200   # 12 hrs
oneDAY=86400    # 24 hrs

for i in $(seq $twoHR)
do
  /usr/bin/top -b -n 1 -c | head -n 25 >> /var/tmp/ym/topout.$DATE
  echo >> topout.$DATE
  echo >> topout.$DATE
  echo >> topout.$DATE
  sleep 0.5
done
