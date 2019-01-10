#pyenv安装与管理python(ubuntu)

安装pyenv必须的包
```ubuntu
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev
```

安装pyenv包
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

设置python默认版本
```
pyenv global 3.7.0
```

更新pip
```
python -m pip install --upgrade pip
```