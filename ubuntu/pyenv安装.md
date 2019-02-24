#pyenv安装与管理python虚拟环境(ubuntu)

需要用到git.

```
sudo apt install git
```



安装pyenv必须的包

```ubuntu
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev
```

在目录~/.pyenv下安装pyenv包
```
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
```

设置环境变量
```
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile

source ~/.bash_profile

exec $SHELL
```

安装完成后查看pyenv版本
```
pyenv --version
```

查看系统中所有已安装的python版本(带\*号的是默认版本)
```
pyenv versions
```

下载安装python(-v显示细节)
```
pyenv install -v 3.7.0
```

下载很慢时用国内源（搜狐）下载并安装

```
v=3.7.1;wget http://mirrors.sohu.com/python/$v/Python-$v.tar.xz -P ~/.pyenv/cache/;pyenv install $v  
```

设置python默认版本

```
pyenv global 3.7.0
```

更新pip
```
python -m pip install --upgrade pip
```



安装pyenv-virtualenv管理虚拟环境

```
$ git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv # 安装 pyenv-virtualenv
$ pyenv virtualenv *.*.* venv_name # 在当前目录下创建一个名为venv_name的虚拟环境，使用*.*.*版本python
$ pyenv virtualenvs # 显示已有的虚拟环境
```



```
$ pyenv activate <name> # 手动启动已有虚拟环境
$ pyenv deactivate  # 手动停止虚拟环境
$ pyenv uninstall <name> # 删除环境 在问号后面输入y
```

