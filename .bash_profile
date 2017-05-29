export TERM=xterm-color
HISTSIZE=500000
HISTFILESIZE=5000000

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[32m\]\w - \$(parse_git_branch)\[\033[00m\] \n➜ "


PATH=/Applications/MAMP/bin/php/php5.5.26/bin:$PATH
PATH=~/.composer/vendor/bin:$PATH
PATH=/Applications/MAMP/Library/bin:$PATH
PATH=/Users/nguyenvankhoi/android-sdk-macosx/platform-tools:/Users/nguyenvankhoi/android-sdk-macosx/tools:$PATH
PATH=/usr/local/Cellar/chromedriver/2.22:$PATH
PATH=/usr/local/bin:$PATH
export PATH

source ~/.bashrc
source ~/.aliases

open_web(){
    python ~/scripts/python/open_web.py $@
}

gg(){
    open_web google.com $@
}

stackoverflow(){
    open_web google.com site:stackoverflow.com $@
}

reloadrc(){
    source ~/.bash_profile
}

superkill(){
    ps -ef | grep $1| grep -v grep| awk '{print $2}'| xargs kill -9
}

members(){
    awk -v x=$1 -F':' '$1 == x {print $4}' /etc/group
}

export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
export GOPATH=~/.go

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
fi

export PATH="/usr/local/opt/node@6/bin:$PATH"
