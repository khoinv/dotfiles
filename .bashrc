#!/bin/bash
alias javac="javac -J-Dfile.encoding=UTF-8"
alias java="java -Dfile.encoding=UTF-8"
export JAVA_OPTIONS="-Dfile.encoding=UTF-8"

#export ANDROID_HOME=~/android-sdk-macosx/
#export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

#export ANDROID_HOME=~/android/
#export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH="$HOME/.node/bin:$PATH"
alias tmux="tmux -2"
alias vi="vim"
export TERM="screen-256color"
source ~/.bash_virtenv
export PATH=/usr/bin:$PATH

export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode
export LESS_TERMCAP_md=$(printf '\e[01;38;5;75m') # enter double-bright mode
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode
export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;38;5;200m') # enter underline mode
