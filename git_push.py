#!/usr/bin/python
import os
import datetime

home = "/home/vishnu/"
op_dir = home+"configs/"
sep = " "
date = str(datetime.datetime.now())
commit_msg = "This Commit is on "+date

commit_msg = '"'+commit_msg+'"'

os.chdir(str(os.getcwd()))
print os.getcwd()
print commit_msg
git_add = "git add ."
git_commit = "git commit -m "+commit_msg
git_push = "git push -u origin master"

os.system(git_add)
os.system(git_commit)
os.system(git_push)


