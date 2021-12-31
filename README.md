# <div style="text-align: center;"> Tmux Layout Template </div>

## Overview
Tmux is a terminal multiplexer that can split a single terminal screen into multiple terminal screens called pane. Layout are stored in the "**Templates**" folder in the form of shell scripts. Also, if you have already created a layout, you can add it to "Templates".

## How to use
###
### Run "Tmux Layout Template" 
Let's try to run "sample.sh".

	$ cd TmuxLayoutTemplate
	$ ./Templates/sample.sh
Use any string of your choice as the session name. In this case, we'll use "sample".

	>>> INPUT Session Name: sample
Once the session has been successfully deployed, stop the session.

	$ tmux ls
	>>> sample: 1 windows (created Sat Jan  1 01:32:22 2022) [238x49] (attached)
	$ tmux kill-session -t sample
	>>> [exited]

## Run environment

	Linux malive 4.19.0-16-amd64 #1 SMP Debian 4.19.181-1 (2021-03-19) x86_64 GNU/Linux

## Set up
Running "setup.sh" will reduce the preparation of the Tmux Layout Template. Note that executing "setup.sh" may destroy the development environment, so it is recommended to check "setup.sh" beforehand.

### Run "setup.sh"

	$ cd TmuxLayoutTemplate
	$ ./setup.sh


## What you can contribute
This repository has the following structure.

	.
	└── TmuxLayoutTemplate
    	├── README.md
    	├── setup.sh
    	└── Templates
    	    └── sample.sh

The template must be executable as a shell script. There are no other restrictions. Your layout should be useful to someone. Whether you are a beginner or an advanced user, don't be afraid to join us and grow this collection of templates together.



***
**MIT License**
Copyright (c) 2021-2022 All GitHub users who contributed to the project

https://opensource.org/licenses/mit-license.php