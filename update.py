#!/usr/bin/python
import os

home = "/home/vishnu/"
op_dir = home+"configs/"
sep = " "
dirs = {
"zsh_dir"       : home+".zsh/",
"vim_dir"       : home+".vim/",
"nvim_dir"      : home+".config/nvim/",
"awesome_dir"   : home+".config/awesome/",
"oh_my_zsh_dir" : home+".oh-my-zsh/",
"i3_dir"        : home+".config/i3/",
"mutt_dir"      : home+".config/mutt/",
"st_dir"        : home+"st/",
"dotfiles_dir"  : home+"dotfiles/"}
files = {
"xdefaults"     : home+".Xdefaults",
"zshrc"         : home+".zshrc",
"vimrc"         : home+".vimrc"}


for i in dirs:
    source_dir = dirs[i]
    destination_dir = op_dir
    cmd = "cp -gr"+sep+source_dir+sep+destination_dir
    os.system(cmd)


for i in files:
    source_file = files[i]
    destination_dir = op_dir
    cmd = "cp -g"+sep+source_file+sep+destination_dir
    os.system(cmd)
