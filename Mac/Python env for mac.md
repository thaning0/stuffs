# Python environment for mac

需要先安装Xcode

[pyenv](https://github.com/pyenv/pyenv) can manage diffirence Python，[pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv) is a pyenv plugin that provides features to manage virtualenvs and conda environments for Python on UNIX-like systems.

```
$ brew install pyenv #安装pyenv
$ pyenv install -l #查看python最新版本并安装,如果默认下载太慢可以手动下载XZ包放入(pyenv root)/sources/下载包的版本
$ pyenv install *.*.* -k #用已有包安装 

# 加入pyenv路径
$ export PYENV_ROOT="$HOME/.pyenv"
$ export PATH="$PYENV_ROOT/bin:$PATH"

# 创建 .bash_profile 文件
$ cd ~/
$ touch .bash_profile #创建文件
$ open -e .bash_profile #打开 .bash_profile 文件 将eval "$(pyenv init -)"加入第一行
#重启Terminal

$ pyenv local 3.7.1 #设置当前目录下的默认python
$ python --version
$ pip -V #查看pip版本
$ python -m pip install --upgrade pip #更新pip

$ brew install pyenv-virtualenv # 安装 pyenv-virtualenv
$ pyenv virtualenv *.*.* venv_name # 在当前目录下创建一个名为venv_name的虚拟环境，使用*.*.*版本python
```



Remark: 如果出现“zlib not available"的错误，Mojave10.14.2使用以下代码可以解决问题

```
sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /
```
