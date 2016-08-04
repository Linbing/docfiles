#Python
* Pypy
    
    用python写的python版本

* JPython
    
    java

* IronPython
    
    .net

* iPython
    增强型命令行
    
* distutils模块
    用于发布Python应用程序的工具
* MinGW
    windows跨平台编译器 

* 查询一个模块的路径 print module_name.__file__
    

#速记
* 列表推导(list comprehensions)

    [x*x for x in range(10) if x%2==0]
    
    [0, 4, 16, 36, 64]

* 迭代器
    * next
     
     返回容器的下一个项目，可定义next方法
    
    * _iter_
        
        返回对象本身
    
    迭代结束抛出StopIteration异常
* 生成器（generator对象）
    
    yield


* 描述符
* 装饰


* chroot target /bin/bash
* hasattr(obj,'age')/geattr(obj,'age')/seattr/delattr

* ls *.tar.gz | xargs -n1 tar xvf
* ps -ef --pid pid_num | fold -s -w 85
* import traceback; LOG.error("--trace '%s' " % traceback.format_stack())
* ：s/vivian/sky/g 替换当前行所有 vivian 为 sky
* ：s/vivian/sky/ 替换当前行第一个 vivian 为 sky
* :%s/source_pattern/target_pattern/g
* ps -C nova-api -o pid
* bzip2 -d CentOS6.6.img.bz2
* tcpdump -i br100 -n port 67 or port 68
* ip addr show eth0 | awk '$1 == "inet" {print $2}' | cut -f1 -d/

* site:edu.com filetype:ppt
* site:pan.baidu.com intext:"幸存者"（文本内部）
* intitle:古文观止mobi site:pan.baidu.com(在百度网盘中搜索标题为古文观止的文件）
* define + word 可以查看定义


>   
* intitle:"techrone” webpage的title中包含这个词
* inurl:"techrone" url的字符串序列包含这个词
* link:http://google.com 搜索结果中所有网页的内容都有这个链接地址
* site:http://google.com 搜索结果限定在这个domain中
* filetype:pdf, html, jpeg 限定搜索结果的文件类型
* relatedto:techrone 给出这个单词的相关结果，可以是近义词

* books by name 作者的书

* china movie list 2015 查看年度电影
* “”    以整个短语作为关键字
*  -    排除某个关键字
* ~ 同时搜索近义词
* ..    显示指定年份时间段内的搜索结果  2008..2015
* *test 匹配任何的关键字    ＊test

* author:green green的论文

* Unity mode    vmware 8.0 宿主化，也就是不显示虚拟系统，只显示其中运行的程序，而且就像不在虚拟机里。每一个虚拟机的程序都会出现在主机的任务栏（当然只包括有界面的），足以以假乱真

* socat
* Virtio Virtio是对半虚拟化 hypervisor 中的一组通用模拟设备的抽象。该设置允许 hypervisor 导出一组通用的模拟设备，并通过一个通用的应用编程接口（API）让它们变得可用。下图展示了为什么这很重要。有了半虚拟化 hypervisor 之后，来宾操作系统能够实现一组通用的接口，在一组后端驱动程序之后采用特定的设备模拟。后端驱动程序不需要是通用的，因为它们只实现前端所需的行为

* wall  i will reboot keystone  会给所有的登录用户发送信息
* write root pts/3  给pts/3的root登录用户发送消息



--------
# git ops
###git log
* git log --stat 显示统计信息
* git log -p -number show details log with diff file / -number recent number  commit
* git log --graph show all of the commit histroy with graph
* git log --pretty=fuller
* --name-only 只显示修改的文件列表


### git commit
* git commit --amend 重新提交，当你前面已经提交了，这是你再执行commint --amned的时候，就是重新提交前面一个，你可以先add 文件，或者只是修改提交信息
*

### git status
*git add a.c b.c
*git status
*git reset HEAD b.c 把b.c从暂缓区取出来
*git checkout -- file.name  取消对file.name的修改

### git patch
* git diff master > xxx.patch
* git apply xxx.patch

### git remote
* git remote -v 查看远程仓库列表
* git remote add project_name project_url(ssh or https)
* git fetch project_name    拉取project_name项目到本地，这时候你git branch -a就会多多project_name里面的远程分之, git fetch只是抓取远端数据到本地不会合并到当前分之，git pull会抓取且合并到当前分之
* git remote show remote_name
* git remote rename remote_name 重新命名远程分之
* git remote rm remote_name 删除远程分之

###git tag
* git tag -l '1.1.*'
* git tag -a tag_num -m 'tag message'
* git show tag_num
* git checkout tag_name
* git tag -d tag_name
* git tag -a tag_name commit_hash   给指定的commit打tag
* git push origin tag_name  发布tag，推送到远端
* git push origin --tags    将本地所有的tag一次性发布


###
* %H 提交对象（commit）的完整哈希字串
* %h 提交对象的简短哈希字串
* %T 树对象（tree）的完整哈希字串
* %t 树对象的简短哈希字串
* %P 父对象的完整哈希字串
* %p 父对象的简短哈希字串
* %an 作者（author）的名字
* %ae 作者的电子邮件地址
* %ad 作者的修订日期（可以用－date= 选项定制格式）
* %ar 作者的修订日期，按多久以前的方式显示
* %cn 提交者(committer)的名字
* %ce 提交者的电子邮件地址
* %cd 提交日期
* %cr 提交日期，按多久以前的方式显示
* %s 提交说明
* --no-merges 不查看merge的提交信息
--------
#ipmitool
* ipmitool -H 172.16.10.209 -I lanplu* s -U root -P admin lan print 1


----
#yum
* yum localinstall *.rpm    本地目录安装rpm
* yum list
* yum search openstack
* yum list installed    列出所有已安装的包
* yum list extras   列出所有已安装但不在Yum Repository内的软件包
* yum info python-django.noarch 查看软件包详情
* yum info updates  列出所有可更新的
* yum clean headers 清除header
* yum clean packages    清除下载的rpm包
* yum clean all     清除所有
* yum clean oldheaders  清除旧的
* yum deplist package

------
#rpm
* rpm -qa   查询所有已经安装的rpm包
* rpm -ivh xx.rpm       显示进度安装xx.rpm包
* rpm -Uvh xx.rpm 升级软件包（update）
* rpm -qpl 列出软件包内的文件信息（l换成i，列出包描述信息）
* -qf 查找指定文件属于哪个RPM软件包[Query File]
* －e 删除软件包
* rpm -qpR file.rpm [查看包]依赖关系
* RPM源代码包装安装 .src.rpm结尾的文件
    * rpm　--recompile　vim-4.6-4.src.rpm 这个命令会把源代码解包并编译、安装它
    * rpm　--rebuild　vim-4.6-4.src.rpm 在安装完成后，还会把编译生成的可执行文件重新包装成i386.rpm的RPM软件包

------
#BASH
* cat test.sh #!/bin/bashset-o nounsetset-o errexit
* ps -o pgid 19334  查看进程19334的进程组id，然后通过kill把该组的所有进程都kill掉
* 获取当前路径  #!/bin/bash bashpath=$(cd `dirname $0`;pwd) echo $basepath
* dstat -cdlmnpsy

-------
#grep 
* grep -nr xxxxx . --exclude-dir=./tests


-----
#tcpdump
* -i eth0/ens16777..    指定监听的网卡
* -nn   当tcpdump遇到协议号或者端口号时，不要将这些号码转换成对应的协议名称或端口号名称，比如21端口是FTP端口，我们希望显示21，而tcpdump会把它显示成FTP
* -X 把协议头和包内容都显示出来，（tcpdump会以16进制和ASCII形式显示）
* port 53   只要53号端口的报文
* icmp/arp/udp/tcp/ip   指定协议类型
* src host 10.0.0.1 指定源地址
* dst host 10.0.0.1 指定目的地址
* host 10.0.0.1     不管源/目的地址，包含host的报文都抓
* net 10.0.0.0/24   指定ip段
* -c 3      抓3次报文就可以
* [and/or/and not] 并或关系
* -w file   写入文件
* -e    添加-e选项，就是添加以太帧的头部输出，也就是能看到源mac和目的mac地址
* -l 将tcpdump的输出变成‘行缓冲‘，

-----
#screen
* usermod keystone -s /bin/bash
* screen su - keystone -c 'ipdb /usr/bin/keystone-all'

----
#rabbitmq
* 进入erl> net_adm.names().得到当前正在运行得erlang节点。当你启动一个erlang节点时，它会用epmd进程进行注册，提供OS内核分配得地址和端口
* 端口
    * 4369 epmd
    * 25672 Erlang distribution
    * 5672, 5671  AMQP 0-9-1 without and with TLS
    * 15672     if management plugin is enabled
    * 61613, 61614  if STOMP is enabled
    * 1883, 8883 if MQTT is enabled
* rabbitmqctl environment


---------
#mysql
* mysqldump -u root -p sms > sms.sql;

--------
#ruby
* gem source list   查看ruby gem源
* gem sources --remove https://rubygems.org/  移除源
* gem sources -a https://ruby.taobao.org/   添加源
* gem install jekyll    安装软件


-----
#watch
* watch -n 1 -td "netstat -anpo | grep 89898"

-----
#iptables
* iptables -I INPUT -p tcp --dport/--sport 5672 -j DROP/ACCEPT
* iptables -L -n  --line-number 可用显示链号
* iptables -D INPUT 8   (删除INPUT 链上8号规则）
* -I 插入一条规则
* -D 删除
* -F 清除
* 


-----
# mac快捷键
* command＋h 快速隐藏掉
# iterms快捷键
* command+k 清空屏幕内容
* command+opt+b 查看屏幕操作记录
* command+j 前一个tab页
* command +l 后一个tab页
# tmux快捷键
* control+q 激活
* - 水平分屏
* | 垂直分屏幕
* j,h,k,l跟vim一样上下切换
* ctron+j,h,k,l调整各个分屏幕大小

------
# ansible
* ansible -i inventory/common-node all -m setup -a ""
* ansible -i inventory/common-node all -m service -a "name=httpd state=restarted"


-------
# chrony
* chronyc sources -v 查看源
* chronyc sourcestats -v


---------
#docker
* docker import ***.tar image_name

* docker run -d -p local_port:container_port -v local_volume_path:container_volume_paht image_name
* docker run --privileged -d -p l_prot:c_port -v l_dir:/c_dir image 

* docker attach container_id

* docker rmi image_name
* docker rm container_id
* docker build -t image_name .
* docker commint container_id image_name
* docker inspect container_id	(show detail of a container




#Dockerfile
* FROM centos:7.1.1503
* MAINTAINER user_naem <user_email>
* RUN yum install -y soft_name
* COPY local_path container_path
* WORKDIR default dir














