#!/bin/env bash
source config/config.sh
## 雨云mcsm面板服务器请删除下一行注释
#chown -R root:root /home/container

./git.sh start
cd work_dir
exec_server
cd ..
./git.sh stop
