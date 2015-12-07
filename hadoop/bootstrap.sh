#!/bin/bash

source /etc/profile


ssh-keygen -t dsa -P '' -f ~/.ssh/id_dsa
cat ~/.ssh/id_dsa.pub >> ~/.ssh/authorized_keys
sudo /etc/init.d/ssh start
ssh localhost

hdfs namenode -format
start-dfs.sh
nohup hiveserver2 >> hvs2.log &

if [[ $1 == "-d" ]]; then
  while true; do sleep 5000; done
fi

if [[ $1 == "-bash" ]]; then
  /bin/bash
fi

