Proxy
==================

### 配置代理
- sudo apt-get install python3-pip polipo
- sudo pip3 install shadowsocks
- 配置文件归位

### 命令行代理
#### 设置
- 添加"export http_proxy=http://127.0.0.1:8123"
- 添加"export https_proxy=http://127.0.0.1:8123"
#### 取消
- unset http_proxy
- unset https_proxy

### Git代理
#### 设置
- git config --global https.proxy http://127.0.0.1:8123
- git config --global https.proxy http://127.0.0.1:8123
#### 取消
- git config --global --unset http.proxy
- git config --global --unset https.proxy

### pip代理
pip install --proxy SERVER:PORT PACKAGE
~/.pip/pip.conf

```
[global]
proxy = http://127.0.0.1:8123
```

### apt-get代理
```
sudo vim /etc/apt/apt.conf
添加
Acquire::http::Proxy "http://yourproxyaddress:proxyport";
```

### NPM代理
```
npm config set proxy http://127.0.0.1:8123
npm config set https-proxy http://127.0.0.1:8123
```

```
https://xiapac.com/hdpconnect/6032912.pac
```
