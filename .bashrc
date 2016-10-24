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
