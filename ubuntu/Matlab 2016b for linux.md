# Matlab 2016b for linux

安装[参考](https://blog.csdn.net/Jesse_Mx/article/details/53956358)

安装Matlab支持

```
sudo apt-get install matlab-support
```

接着就可以使用命令`sudo matlab` 启动Matlab了。

接下来开放matlab权限给所有用户，删除已有Matlab preference

```
$ cd ~/.matlab
$ sudo rm -rf R2016b
$ sudo chmod 777 ~/.matlab
$ matlab # 启动matlab窗口
$ matlab -nodisplay # 启动matlab 无视窗
$ matlab -help #帮助
$ matlab -nodisplay -nosplash -r matlabfile # 运行 matlabfile.m 文件
```

- nodesktop 启动jvm(Jave Virtual Machine)，不启动desktop，但help 界面，preferences界面等仍可通过cmdline 调出，即jvm启动但不启动desktop，可以启动其他显示；但是matlab不会在cmd history记录本次执行的命令
- nodisplay 启动jvm，不启动desktop，不启动任何显示相关，忽略任何DISPLAY 环境变量；即jvm启动但不能显示
- nojvm 不启动jvm，则与之相关的一切活动将无法进行，包括图形界面显示，help 界面，preferences界面等 即jvm不启动故不能显示
- nosplash 只是不显示启动时的log画面，jvm，desktop等正常启动



可以将如下命令加到~/.bashrc文件

```
alias mrun='matlab -nodisplay -nosplash -r'
```

之后可以直接

```
mrun matlabfile # 运行 matlabfile.m 文件
```

