ICEW
===========================

## Python 
> VERSION: 3.5.2

## functools
> LAST_UPDATE_TIME: 2017-4-19

[详细](https://github.com/icnsmlfy/icew/edit/master)



## Linux 

镜像下载: http://mirrors.ustc.edu.cn/

`split`分割文件


## Cloud Services
libvirt documentation: https://libvirt.org/docs/libvirt-appdev-guide-python/en-US/html/index.html

centos: https://coreos.com/os/docs/latest/booting-with-libvirt.html

## rc.local
>
```
1. 新建文件
# /etc/systemd/system/rc-local.service
=================================
[Unit]
 Description=/etc/rc.local Compatibility
 ConditionPathExists=/etc/rc.local

[Service]
 Type=forking
 ExecStart=/etc/rc.local start
 TimeoutSec=0
 StandardOutput=tty
 RemainAfterExit=yes
 SysVStartPriority=99

[Install]
 WantedBy=multi-user.target
===============================
 
2. 激活服务
$ sudo systemctl enable rc-local.service

3. 新建rc.local，并给执行权限
$ sudo chmod +x /etc/rc.local
*如果原来存在的/etc/rc.local 检查是否有执行权限,但是不生效，检查是否有执行权限，注意权限给/etc/rc.d/rc.local，/etc/rc.local只是其软链接*
```

## vim骚操作
vim不用退出就可以保存需要root权限的文件
`:w !sudo tee %`

删除包含特定字符的行
`g/PATTERN/d` N,M 代表行数或者g表示全局,下同

删除不包含指定字符的行
`v/PATTERN/d`  

`N,M!/PATTERN/d`

## nmap
检测主机端口是否打开
`nmap IP -p PORT`
or
`nc -v IP PORT`

## ipython
`%load_ext autoreload`

`%autoreload 2`

## git
查看指定文件修改历史
`git log --pretty=oneline FILENAME`
### git proxy
`git config --global https.proxy https://IP:PORT

git config --global http.proxy http://IP:PORT`

or 

`git config --global https.proxy="socks5://IP:PORT"

git config --global http.proxy="socks5://IP:PORT"`


## Book List

python进阶 http://docs.pythontab.com/interpy/


## python描述符
http://fanchunke.me/Python/Python%E4%B8%AD%E7%9A%84%E5%B1%9E%E6%80%A7%E8%AE%BF%E9%97%AE%E4%B8%8E%E6%8F%8F%E8%BF%B0%E7%AC%A6/
只定义`__get__`则为非数据描述符，同时定义`__get__`和`__set__`才是数据描述符。

*优先级*
data descriptor > instance  dictionary > non-data descriptor > `__getattr__`
- descriptors are invoked by the __getattribute__() method
- overriding __getattribute__() prevents automatic descriptor calls
- __getattribute__() is only available with new style classes and objects
- object.__getattribute__() and type.__getattribute__() make different calls to __get__().
- data descriptors always override instance dictionaries.
- non-data descriptors may be overridden by instance dictionaries.

property(fget=None, fset=None, fdel=None, doc=None) -> property attribute


## 大文件传输
server A: tar -zcvf - NAME | pv |nc SERVERB PORT

server B: nc -l 0.0.0.0 PORT | tar -zxvf -

加上pv可以显示速度

## libmysqlclient-dev


## 高效学习
https://www.jianshu.com/p/679011b357be?utm_campaign=maleskine&utm_content=note&utm_medium=pc_all_hots&utm_source=recommendation

ICEW
=======

## Python
### pytest
- addfinalizer
- usefixtures 对fixtures function无效

### TestCase

### MetaClass
- [documentation](http://python.jobbole.com/88795/)

### __class__

### __name__

### inspect
- getmembers

- getmodulename

## VIM
- bn
- bp


## Linux


## seafile
- [deploy](https://manual.seafile.com/deploy/)
- [download](https://www.seafile.com/en/download/)


## MARKDOWN
- [documentation](https://markdown-guide.readthedocs.io/en/latest/index.html)

## 
## 20190222
- Linux

umask, find, 数据块(0.5k), cmin(文件属性), mmin(内容), locate, updatedb, which, whereis, man, whatis, help, passwd, useradd, who(tty本地 ), w


http://blog.jobbole.com/21351/

## 20190215
ipython

web develop
=================

## url
[Web Fundamentals](https://developers.google.com/web)

## 移动端适配
[移动端适配](https://juejin.im/post/5c0fd830f265da61506450a3)
- postcss
- postcss-pxtorem

## 20190614
