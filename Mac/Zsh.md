# Zsh

Mac 自带 Zsh

```
$ Zsh --version
```

将zsh设置成默认shell,在终端输入
```$
$ chsh -s /bin/zsh
```

重启终端就可以了。



安装[oh-my-zash](github.com/robbyrussell/oh-my-zsh.git)

```
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
```

安装支持powerline的字体

```
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

