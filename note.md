# linux
# tmux
- set synchronize-panes 

# linux 复制内容到剪切板
cat FILE | xclip -selection c
xclip -o > FILE

# 取第A到B行 
cat filename | tail -n +A | head -n B

# sed *多行合并一行*
sed ':a;N;s/\n/,/;ta;' FILE

# 差集 a -b 
grep -Fvf b a | sort | uniq > FILE

# 交集 a ^ b
grep -F -f a b

# 切割文件
split -l N FILE NEW_FILE

# 计算器 
bc

# 电池电量
cat /sys/class/power_supply/BAT0/capacity

# flush dns
sudo /etc/init.d/dns-clean restart

# cut file
cut -c COL- FILE

# calc dictionary size
du -h --max-depth=1 DICTIONARY


## TODO:
networking


## MySQL
# 数据库交换
RENAME TABLE worker_log TO worker_log2, worker_log3 To worker_log;

# add column
alter table TABLE add COLUMN TYPE default NULL;

# 导出表结构
mysqldump -h HOST -u USER -p -A -d --skip-lock-tables > FILE


# docker
# docker日志导出
docker logs CONTAINER_NAME >& FILE


## git
# git历史查找
git log -G KEYWORD -p

# 查看远程分支
git branch -a

# push git tag
git push --tags

# remove file track history
git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch FILENAME' --prune-empty --tag-name-filter cat -- --all


# vim
# 强制保存
:w !sudo tee %

# pannel switch
ctrl+w DIRECTION


# networking speed
```
git clone https://github.com/sivel/speedtest-cli.git
```
