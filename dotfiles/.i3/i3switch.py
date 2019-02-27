#!/usr/bin/python
import os
import subprocess
import json
import re
import i3
from itertools import cycle

### Returns the current workspace 
# workspaces = i3.msg('get_workspaces')
# workspace = i3.filter(tree=workspaces, focused=True)
# print workspace
# print workspace[0]['name']

def get_windows_from_current_workspace():
    res = []
    ws = get_current_workspace()
    workspace = i3.filter(name=ws)
    if workspace:
        workspace = workspace[0]
        windows = i3.filter(workspace, nodes=[])
        # print windows
        cur_window = i3.filter(windows, focused=True)
        cur_window_id = cur_window[0]['id']
        for window in windows:
            res.append(window['id'])
    return cur_window_id,res


def get_current_workspace():
    ''' Returns the current workspace '''
    workspaces = i3.msg('get_workspaces')
    workspace = i3.filter(tree=workspaces, focused=True)
    if workspace:
        return workspace[0]['name']
    return ''

def get_win_ids():
    windows = get_windows_from_current_workspace()
    cur_win_id = windows[0]
    all_win_ids = windows[1]
    lenth  = len(all_win_ids)
    cur_index =  all_win_ids.index(cur_win_id)
    prev_index = cur_index-1
    next_index = (cur_index+1)-lenth
    return all_win_ids[prev_index],all_win_ids[next_index]
print get_win_ids()
prev = get_win_ids()[0]
nxt = get_win_ids()[1]
window_id = prev
# cmd = ('i3-msg', '[con_id="{0:d}"] focus'.format(nxt))
# subprocess.check_call(cmd)

def main(argv=None):
    """
    i3t main method

    Kwargs:
        argv (list): arguments e.g. from ``sys.argv[1:]``
    Returns:
        int: nonzero return code on
    """
    argv_len = len(argv)
    if argv_len == 1:
        cmd = argv[0]
        if cmd[0].lower() == 'n':
            subprocess.check_call(('i3-msg', '[con_id="{0:d}"] focus'.format(get_win_ids()[1])))
        elif cmd[0].lower() == 'p':
            subprocess.check_call(('i3-msg', '[con_id="{0:d}"] focus'.format(get_win_ids()[0])))
    elif argv_len == 0:
        cmd = 'next'
    else:
        raise ValueError("specify [n]ext or [p]rev") 
if __name__ == "__main__":
    import sys
    sys.exit(main(argv=sys.argv[1:]))
