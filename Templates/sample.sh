#!/bin/bash

# Start the new session in detached mode
read -p 'INPUT Session Name:' SessionName
tmux new -d -s "${SessionName}"

# Rewrite the name of the window 
tmux rename-window 'MainConsole'

# Creat a pain

	# Frame
	tmux split-window -h -p 50
	tmux split-window -v -p 50
	tmux select-pane -t 1

	# Status
	tmux set -g pane-border-format " #{pane_index} : #T "
	tmux set -g pane-border-status top
	tmux select-pane -T 'Pain 0' -t 0
	tmux select-pane -T 'Pain 1' -t 1
	tmux select-pane -T 'Computer Resources' -t 2

	# Send command
	tmux send-keys -t 2 'htop' C-m

	# Move the cursor to the initial position
	tmux select-pane -t 0

# Attach to the new session
tmux attach -t "${SessionName}"
	
# Note
# Creator: Yuta Onodera
# uname -a >>> Linux malive 4.19.0-16-amd64 #1 SMP Debian 4.19.181-1 (2021-03-19) x86_64 GNU/Linux
# tmux -V >>> tmux 2.8
# htop -v >>> htop 2.2.0 - (C) 2004-2018 Hisham Muhammad Released under the GNU GPL.
	
		

