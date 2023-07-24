# 使用Git自动管理Minecraft服务器

请fork或clone此仓库，把服务端放入`work_dir`

编辑`config/init.sh`,填入仓库信息

如果使用在线仓库托管，填写`online_mode='true'`

`origin_url`填写仓库地址，格式为:`https://用户名:密码@git仓库域名/xxx/xxx.git`，在线模式填写

`branch`默认填写`master`，若使用GitHub，则改为`main`，在线模式填写

`user_mail`和`user_name`分别为邮箱和用户名，必填

>GitHub无法正常登陆，请使用GitHub CLI登录本地Git后使用，URL填写正常clone地址（不需要用户名密码）
