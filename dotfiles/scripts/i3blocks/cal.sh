#!/bin/bash
case $BLOCK_BUTTON in
	1) notify-send "<b>Calendar:</b>
$(cal)" ;;
esac
date '+%d/%b/%Y'
