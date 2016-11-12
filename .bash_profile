export TERM=xterm-color
HISTSIZE=500000
HISTFILESIZE=5000000

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#export PS1="\u@\h \[\033[32m\]\w - \$(parse_git_branch)\[\033[00m\] $ "
export PS1="\u@\h \[\033[32m\]\w - \$(parse_git_branch)\[\033[00m\] \n➜ "


export PATH=/Applications/MAMP/bin/php/php5.5.26/bin:$PATH
export PATH=~/.composer/vendor/bin:$PATH
export PATH=/Applications/MAMP/Library/bin:$PATH
export PATH=/Users/nguyenvankhoi/android-sdk-macosx/platform-tools:/Users/nguyenvankhoi/android-sdk-macosx/tools:$PATH
export PATH=/usr/local/Cellar/chromedriver/2.22:$PATH
alias gs="git status"
alias gd="git diff"
alias gl="git log"
alias gc="git checkout"
alias gpf="git_pull()"
export PATH=/usr/local/bin:$PATH
source /usr/local/bin/virtualenvwrapper.sh
source ~/.bashrc

open_web(){
    python ~/scripts/python/open_web.py $@
}

gg(){
    open_web google.com $@
}

reloadrc(){
    source ~/.bashrc
    source ~/.bash_profile
}

superkill(){
    ps -ef | grep $1| grep -v grep| awk '{print $2}'| xargs kill -9
}
