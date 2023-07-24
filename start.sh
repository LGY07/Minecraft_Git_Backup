#!/bin/env bash

## 雨云mcsm面板服务器请删除下一行注释
#chown -R root:root /home/container

./git.sh start
cd work_dir
LD_LIBRARY_PATH=. ./bedrock_server
cd ..
./git.sh stop
