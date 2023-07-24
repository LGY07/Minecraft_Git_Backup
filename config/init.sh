#!/bin/env bash

git init
tee config.sh << EOF
#!/bin/env bash
## 如果在线模式关闭，请省略origin_url
online_mode='true'
origin_url=''
branch='master'
user_name=''
user_mail=''
exec_server() {
## 在此处编写启动命令，支持多行
LD_LIBRARY_PATH=. ./bedrock_server
}
EOF
chmod +x config.sh
source config.sh
git remote add origin $origin_url
git pull origin $branch
chmod +x git.sh
chmod +x start.sh
mv config.sh config/config.sh
rm $0 -f
