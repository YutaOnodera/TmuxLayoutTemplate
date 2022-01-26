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
	
		

