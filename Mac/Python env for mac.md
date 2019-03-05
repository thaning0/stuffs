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
$ open -e .bash_profile 
#重启Terminal
```
打开 .bash_profile 文件，将以下代码加入第一二行
```
eval "$(pyenv init -)" # 
eval "$(pyenv virtualenv-init -)"
```

pyenv与virtualenv的使用
```
$ pyenv local 3.7.1 #设置当前目录下的默认python
$ python --version
$ pip -V #查看pip版本
$ python -m pip install --upgrade pip #更新pip

$ brew install pyenv-virtualenv # 安装 pyenv-virtualenv
$ pyenv virtualenv *.*.* venv_name # 在当前目录下创建一个名为venv_name的虚拟环境，使用*.*.*版本python

$ pyenv virtualenvs # 显示已有的虚拟环境
```

之前加入eval "$(pyenv virtualenv-init -)"命令后，在对应文件夹内时会自动启用虚拟环境
```
$ pyenv activate <name> # 手动启动已有虚拟环境
$ pyenv deactivate  # 手动停止虚拟环境
$ pyenv uninstall <name> # 删除环境 在问号后面输入y
```

***Remark***: 如果出现“zlib not available"的错误，Mojave10.14.2使用以下代码可以解决问题

```
sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /
```



创建一个常用的虚拟环境

```
$ pyenv virtualenv 3.7.1 common
$ pyenv activate common
$ python -m pip install --upgrade pip #更新pip
$ pip install numpy
$ pip install pandas
$ pip install matplotlib
```



### 遇到Matplotlib包的问题,

调用这个包时显示一下错误

```
ImportError: Python is not installed as a framework. The Mac OS X backend will not be able to function correctly if Python is not installed as a framework. See the Python documentation for more information on installing Python as a framework on Mac OS X. Please either reinstall Python as a framework, or try one of the other backends. If you are using (Ana)Conda please install python.app and replace the use of 'python' with 'pythonw'. See 'Working with Matplotlib on OSX' in the Matplotlib FAQ for more information.
```

总的来说是Matplotlib后端冲突导致的错误, 后端的设置[参考](https://matplotlib.org/users/customizing.html#customizing-matplotlib).

找到Matplotlib包文件夹下的matplotlibrc文件把其中的backend: macosx改为

```
backend: TkAgg
```

matplotlibrc文件的位置有四种情况, 具体看上文的参考. 我的Matplotlib包是安装在虚拟环境tensorflow中的, matplotlibrc文件位置为

```
/Users/t/.pyenv/versions/3.7.1/envs/tensorflow/lib/python3.7/site-packages/matplotlib/mpl-data/matplotlibrc
```

##### 查看虚拟环境中的Matplotlib包的路径

在控制台输入

```
$ pyenv activate tensorflow # 进入虚拟环境tensorflow
$ pip show matplotlib # 显示Matplotlib包相关信息, 包括路径
```

