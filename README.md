dotfiles
========

my dot files 

我的mac上的dot file 

### 安装方法:  

cd ~/  
git clone https://github.com/daozhao/dotfiles.git ~/.dotfiles  
cd ~/.dotfiles  
make install  

### Makefile的其他方法还有  
make help 帮助  
make sync 同步  
make commit 等同于git commit -a  
make install 安装  

### 相关环境安装说明
#### 安装[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh).   

```
curl -L http://install.ohmyz.sh | sh
```
或者：

```
wget --no-check-certificate http://install.ohmyz.sh -O - | sh
```
切换zsh为默认shell。```chsh -s /usr/local/bin/zsh```。


#### 安装vim插件管理工具[Vundle](https://github.com/gmarik/Vundle.vim)

```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
```
这个命令与官方方法有小小不一样，主要是下载路径变化了。因为原来使用了这个路径。
然后运行vi,渐入```:PluginInstall```。不过有部分编译插件还不一定能运行，例如：[Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe)。



