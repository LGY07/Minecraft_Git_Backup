#!/bin/env bash


source config/config.sh
git remote set-url origin $origin_url
git config --global user.email $user_mail
git config --global user.name $user_name
git status
echo "####### 开始自动Git #######"
current_time=$(date "+%Y/%m/%d -%H:%M:%S")		# 获取当前时间
echo ${current_time}			# 显示当前时间
git add .
git commit -m "$1 ${current_time}" 		# 远程仓库可以看到是什么时间修改的...
if [[ $online_mode == "true" ]];then
git push origin $branch
fi
echo "####### 自动Git完成 #######"
sleep 1s
