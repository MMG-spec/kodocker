#!/bin/bash

#查看用户的id用于配置，且询问用户是否使用默认用户id
echo "以下为环境配置，您可在.env文件中修改:" 
echo "连接数据库的root密码为 YOUR_MYSQL_ROOT_PASSWORD 的值 ,请放心,由于docker容器的端口并未向外暴露,您并不一定需要修改此配置"
echo -e "用户id(UID)与用户组id(GID)用于启动docker容器时的权限配置，比如读写./html文件夹的权限\n"
cat .env
echo -e "\n\n休眠5s,休眠结束后将开始运行脚本"
sleep 5s

echo "即将下载kodbox原代码"
sleep 1s
wget -P ./html https://static.kodcloud.com/update/download/kodbox.1.26.zip 
unzip ./html/kodbox.1.26.zip -d ./html/ 
rm ./html/kodbox.1.26.zip
echo "解压完成，准备启动docker-compose"

docker-compose up -d 
echo "请填写mysql地址为:'kod-mysql'" 
echo "请填写mysql的密码（如果没有修改的话）为MYsql_Psd_987"
echo "请填写redis地址为:'kod-redis'"
