#!/bin/bash

##【进程/内存】##################################################
#grep "psaux" statinfo.txt 
#ps aux -sort -rss | head -n 10
#vmstat -s
#cat /proc/meminfo
#free -h
#top
# pmap -d 27660 | grep -v anon | grep -v .so #进程的内存映射关系
#memstat [-w/-p <pid>] #每个共享库的占用内存
#nmon #系统监控工具


##【磁盘】########################################
#du -h #文件和目录的磁盘使用情况
#df -h #文件系统的整体磁盘使用情况
#fdisk -l | grep Disk  #查看磁盘分区表和分区结构
#lsof | grep delete  #查看文件删除情况，删除后不释放磁盘空间，linux本身机制引起
#mount | column -t  #查看挂接的分区状态
#swapon -s #挂接的分区状态


##【cpu】##########################################
#物理cpu数 * cpu核数 * 超线程数 = 逻辑cpu数
#cat /proc/cpuinfo | grep "physical id" | uniq | wc -l #grep "cpu cores" grep "processor"
#lscpu

##【操作系统内核信息】##################################################
#uname -a
#cat /etc/issue
#cat /etc/redhat-release
#getconf LONG_BIT #32/64
#cat /proc/cpuinfo | grep flags | grep ' lm ' | wc -l  #CPU是否支持64位

##【网卡】####################################################
#ifconfig
#lscpi | grep -i "ethernet"
#ethtool <ethN>
#ip link show
#cat /etc/net/dev

##【网络】##########################################################
#ifconfig  #查看机器挂载的网卡
#ping #检测网络是否连通
#telnet IP PORT #远程登录
#nc #netcat
#mtr #网络连通性测试工具，排查丢包
#nslookup sina.com  #dns域名解析
#traceroute sina.com  #数据包路由路径
#netstat -nap | grep <pid>/<port> #ss #网络连接、端口信息
#tcpdump
#nmap -v -A localhost  #扫描=某一主机打开的端口及端口提供的服务
#hostname [-i/-f/-d]

##【系统调用】##############################################
#strace
#ltrace


##【综合】###########################
#dmesg | more  #设备故障诊断,检测存储在ring buffer中的开机信息,详见/var/log/dmesg文件
#dmidecode #获取硬件相关信息,将DMI(desktop management interface)数据库中信息解码,以可读文本显示,包括BIOS/系统/主板/处理器/内存/缓存
#sar -n DEV 1 1 #多功能监控工具

##【并发】########################################################
# & 
#xargs
#parallel


