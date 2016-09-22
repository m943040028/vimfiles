### Instructions

```
$ git clone https://github.com/m943040028/vimfiles.git ~/.vim/
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

$ cd ~/.vim
$ ./link
```

Please follow instructions in [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) for post installation

To generate YouCompleteMe and [color_colded](https://github.com/jeaye/color_coded) config file for magenta kernel
```
$ cd <magenta kernel path>
$ ~/.vim/bundle/YCM-Generator/config_gen.py -eM "-j32 -i CC=clang CXX=clang++ magenta-qemu-arm64" .
$ ~/.vim/bundle/YCM-Generator/config_gen.py -F cc -eM "-j32 -i CC=clang CXX=clang++ magenta-qemu-arm64" .
```

Enter vim, then execute
```
:PluginInstall
```
