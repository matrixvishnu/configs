#!/usr/bin/python
import os

home = "/home/vishnu/"
op_dir = home+"configs/"
sep = " "
dirs = {
"zsh_dir"       : home+".zsh/",
"vim_dir"       : home+".vim/",
"awesome_dir"   : home+".config/awesome/",
"oh_my_zsh_dir" : home+".oh-my-zsh/"}
files = {
"xdefaults"     : home+".Xdefaults",
"zshrc"         : home+".zshrc",
"vimrc"         : home+".vimrc"}


for i in dirs:
    source_dir = dirs[i]
    destination_dir = op_dir
    cmd = "cp -rv"+sep+source_dir+sep+destination_dir
    os.system(cmd)


for i in files:
    source_file = files[i]
    destination_dir = op_dir
    cmd = "cp -v"+sep+source_file+sep+destination_dir
    os.system(cmd)
