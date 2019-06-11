Linux
===============

以太网桥防火墙;内核2.6内置;iptables不能过滤桥接流量，ebtables不适合作为internal防火墙;
五个阶段
- PreRoute
- Input
- Forward
- OutPut
- PostRoute

二、ebtables配置
ebtables的配置分为表、链和规则三级。
1. Table
表是内置且固定的，共有三种: filter, nat, broute，用-t选项指定。最常用的就是filter了，所以不设-t时默认就是这个表。nat用于地址转换，broute用于以太网桥。
2.  Chain
链有内置和自定义两种 。不同的表内置的链不同，这个从数据包的流程图中就可以看出来。所谓自定义的链也是挂接在对应的内置链内的，使用-j让其跳转到新的链中。
3. Rule
每个链中有一系列规则，每个规则定义了一些过滤选项。每个数据包都会匹配这些项，一但匹配成功就会执行对应的动作。

过滤行为：
- ACCEPT
- DROP
- RETURN
- CONTINUE

Ebtables使用规则如下：

ebtables [-t table] -[ADI] chain rule-specification [match-extensions] [watcher-extensions]

？ 网桥


## tcpdump
-n 显示ip加端口
-N 不打印域名
-# 包数量
-Q 指定抓包方向

## linux 网络
20	FTP-data，文件传输协议所使用的主动数据传输端口
21	FTP，文件传输协议的命令通道
22	SSH，较为安全的远程联机服务器
23	Telnet，早期的远程联机服务器软件
25	SMTP，简单邮件传递协议，用在作为 mail server 的埠口
53	DNS，用在作为名称解析的领域名服务器
80	WWW，这个重要吧！就是全球信息网服务器
110	POP3，邮件收信协议，办公室用的收信软件都是透过他
443	https，有安全加密机制的WWW服务器

"https://xiapac.com/hdpconnect"

6032912


### 硬件参数
- 总核数 = 物理CPU个数 X 每颗物理CPU的核数 
- 总逻辑CPU数 = 物理CPU个数 X 每颗物理CPU的核数 X 超线程数

- 查看物理CPU个数
```
cat /proc/cpuinfo| grep "physical id"| sort| uniq| wc -l
```

- 查看每个物理CPU中core的个数(即核数)
```
cat /proc/cpuinfo| grep "cpu cores"| uniq
```

- 查看逻辑CPU的个数
```
cat /proc/cpuinfo| grep "processor"| wc -l
```

- 查看内存
```
free -m
```
