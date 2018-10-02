#!/bin/bash
while [ "$go" != 'root' ] && [ "$go" != '退出' ]
do
clear
read -p "


             ┏┓      ┏┓
            ┏┛┻━━━━━━┛┻┓
            ┃          ┃    ☃           
            ┃  ┳┛   ┗┳ ┃
            ┃     ┻    ┃
            ┗━┓      ┏━┛
              ┃          ┗━━━━━┓
              ┃                ┣┓
              ┃神兽保佑再无BUG  ┏┛
              ┗┓┓┏━┳┓  BUG  ━━━┛
               ┃┫┫ ┃┫┫
               ┗┻┛ ┗┻┛
               
宝塔专业版破解补丁

(输root回车进下一步/输退出回车关闭脚本):" go;
done

if [ "$go" = '退出' ];then
	exit;
fi
startTime=`date +%s`

cd /www/server
mv panel panel.bak
wget -N --no-check-certificate https://bt.yseaer.cn/sh_btpanel/sh_btpanel.zip
unzip -o sh_btpanel.zip
rm -f sh_btpanel.zip
rm /root/sh_btpanel.sh
/etc/init.d/bt restart
clear
read -p "
恭
              喜
                             您
                             
宝塔专业版破解补丁已成功安装!
- - - - - - - - - - - - - - - - - - - - - - - - -
面板地址：http://server_IP:8888
面板初始账号：admin
面板初始密码：admin
尽快登陆面板修改初始登陆弱口令！
exit 0;
