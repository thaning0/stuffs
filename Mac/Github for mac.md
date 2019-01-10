# Github for mac

1. 首先需要一个Github账号

2. 使用Github前需要安装Git

```
$ git --version #查看现有git版本 Mac 自带旧版git

$ brew install git #安装新版git
$ git --version #还是旧版git，需要将安装的git路径加入PATH

$ brew list git #查看安装路径
$ PATH=/usr/local/Cellar:$PATH #加入路径
$ export PATH

$ git --version #显示新版
```

3. 使用Git需要设置用户名与邮件用以上传代码，用户名会在向Github上传时显示

```
$ git config --global user.name "than.ninG" # 全局名称
$ git config --global user.email "t***@***.com" 
```

并将[Email加入Github账号](https://help.github.com/articles/setting-your-commit-email-address-on-github/)



4. Github授权

```
$ ssh-keygen -t rsa -b 4096 -C "than.ning0@gmail.com" #生成SSH密钥
$ open ~/.ssh/id_rsa.pub #复制公钥(全部)到github设置的SSH栏
$ ssh git@github.com # 显示You've successfully authenticated
```

5. 在Github上新建一个repository
6. 将repository clone到本地
```
$ cd ~/Project
$ git remote add origin git@github.com:thaning0/stuffs #关联远程仓库
$ git clone git@github.com:thaning0/stuffs #clone远程仓库到当前文件夹下
```

7. 更改本地仓库中的内容
```
$ cd ~/project/stuffs
$ git add . #将改动加入暂存区
$ git commit -m '提交注释'
$ git push origin master #将文件推送到主干，新建分支后可以推送到分支，将master改为分支名称
```