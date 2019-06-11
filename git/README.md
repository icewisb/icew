Git
=======================

## git 免密码push代码到github
在家目录新建一个".git-credentials",添加下述内容

"https://{username}:{password}@github.com"

$ git confit --global crenential.helper store

or

$ git remote set-url origin git@github.com:username/repo.git


# Git远程操作详解
"http://www.ruanyifeng.com/blog/2014/06/git_remote.html"

- git clone
git clone <版本库的网址>
git clone支持多种协议
$ git clone http[s]://example.com/path/to/repo.git/
$ git clone ssh://example.com/path/to/repo.git/
$ git clone git://example.com/path/to/repo.git/
$ git clone /opt/git/project.git
$ git clone file:///opt/git/project.git
$ git clone ftp[s]://example.com/path/to/repo.git/
$ git clone rsync://example.com/path/to/repo.git/


# 删除远程分支
git branch -r -d origin/branch-name
git push origin :branch-name
