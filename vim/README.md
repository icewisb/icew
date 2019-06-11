vim
========================

> VERSION: 1.0

> LAST_UPDATE_TIME: 2018-08-24

---------------------------
---------------------------

# 安装

> root
> python3.5

### 1. 完全卸载旧版vim 
```
dpkg -l | grep vim # 查看vim相关包
apt-get remove PACKAGES
apt-get purge PACKAGES
rm ~/.vimrc
rm -rf ~/.vim
rm -rf /usr/share/vim
```

### 2. 获取vim源码
``` 
# 安装依赖
apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev python3-dev ruby-dev liblua5.1 lua5.1-dev libperl-dev git 
# 获取源码
git clone https://github.com/vim/vim

# 编译
cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/config \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local
make -j4
sudo make install


## 通过包管理器安装
```
# 安装
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim


# 删除vim
sudo apt install ppa-purge
sudo ppa-purge ppa:jonathonf/vim
```

## 配置vim
```
# 安装vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

把文件base.vimrc里的内容复制到~/.vimrc的头部

# 安装YCM
- 
    cd ~/.vim/bundle

- vue高亮
	npm i -g eslint eslint-plugin-vue # vim-vue插件所需依赖
```

## YCM配置

### 安装
```
    git clone https://github.com/Valloric/YouCompleteMe ~/.vim/bundle/YouCompleteMe
    cd ~/.vim/bundle/YouCompleteMe
    git submodule update --init --recursive
    ./install.py --all
```

### 依赖
```
    sudo apt-get install build-essential cmake python-dev python3-dev  # YCM依赖
    # sudo apt-get install ctags silversearcher-ag
```

### JavaScript和TypeScript补全
```
npm install -g typescript
```

### 语法检查
```
sudo pip3 install flake8
```

### 文件结构图
```
sudo apt-get install ctags
```


