# Visual Studio Code
VSC支持Git资源管理，直接将git仓库文件夹加入Explore就可以了
新版VSC的界面语言会匹配系统语言，有的命令会自动本地化为中文。为了方面使用命令，需要将VSC界面语言改为英文
> 打开Command palette,搜索Configure Display Language
> 
> 修改local设置：”local“：”en-US“
> 
> 重启VSC

### Markdown in VSC

**Extensions**:
- [Markdown All in one](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one#review-details) 一个插件超多功能

数学公式支持还是不够好。还是Typora更强(并且很少遇到Bug)，Latex支持更加全面

2019-01-11 打开Markdown的Web预览编辑时，会出现隐藏的控制字符，导致上传到Github时出现额外无法识别的字符。原因是Chromium的bug，问题近一年没解决了[参考](https://juejin.im/entry/5a806ddef265da4e84092eeb)。
解决方式：用Typora编辑Markdown

### Python in VSC
1. 安装Python与VSC的[Python拓展](https://marketplace.visualstudio.com/items?itemName=ms-python.python)

控制台Python命令
```
>python:select interpreter # 或者简单的输入 psi 选择python解释器
>python:run python file in terminal # 运行py脚本，等等
```

使用虚拟环境
用`pyenv-virtulenv`创建虚拟环境后重启VSC，重新选择解释器就能看见虚拟环境中的解释器了。

2. 代码提示(Autocomplete)
- python拓展自带[IntelliSense](https://code.visualstudio.com/docs/editor/intellisense)调用解释器的代码提示
- 基于机器学习的代码提示拓展(测试版)[Visual Studio IntelliCode - Preview](https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode#overview)

3. [代码分析(Linting)](https://code.visualstudio.com/docs/python/linting)
- 安装pylint`pip install pylint`
- `"python.linting.pylintEnabled": true,`加入VSC设置

4. pep8格式(使用autopep8)
- 安装autopep8 或者按格式化快捷键 optio+shift+F 自动安装
  
  