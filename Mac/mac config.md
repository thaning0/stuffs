My Mac

### 配置

1. 配置dock隐藏显示无延迟

```
$ defaults write com.apple.Dock autohide-delay -float 0 && killall Dock
```

  删去代码中的`-float 0`即可恢复默认延迟时间

2. 简化Finder的路径栏

```
$ defaults write com.apple.finder PathBarRootAtHome -bool TRUE;killall Finder
```

删去代码中的`-bool TRUE`即可恢复默认设置

3. 在Finder标题栏现实具体路径

```
$ defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES
```

4. 安装[Homebrew](https://brew.sh/index_zh-cn)
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
5. iStat Menu激活码

```
Email: 982092332@qq.com 
SN: GAWAE-FCWQ3-P8NYB-C7GF7-NEDRT-Q5DTB-MFZG6-6NEQC-CRMUD-8MZ2K-66SRB-SU8EW-EDLZ9-TGH3S-8SGA 
```

6. Proxifier激活码

```
P427L-9Y552-5433E-8DSR3-58Z68
```

7. 调整启动台图标大小
```
$ defaults write com.apple.dock springboard-rows -int 6 #6行
$ defaults write com.apple.dock springboard-columns -int 10 #10列
$ defaults write com.apple.dock ResetLaunchPad -bool TRUE;killall Dock #重启启动台
```

8. 设置dictionary proxy可以在字典中查看wiki
9. Omnifocus pro激活码
```
Mifeng User#18 [EDUCATIONAL LICENSE] # 所有者
BSHD-BGIF-IAJM-RLIK-GCDD-OCR # key
```

10. 单独设置一个app的语言，例如Omnifocus
```
$ mdls -name kMDItemCFBundleIdentifier /Applications/OmniFocus.app # 获得应用标识
kMDItemCFBundleIdentifier = "com.omnigroup.OmniFocus3"
$ defaults write "com.omnigroup.OmniFocus3" AppleLanguages '("en_US")' #  修改程序默认语言为英文
```

11. Omnigraffle激活码
```
账号：Appked
激活码：MFWG-GHEB-HYTW-CGHT-CSXU-QCNC-SXU
```