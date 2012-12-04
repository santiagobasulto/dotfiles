# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\u@\h\[\033[00m\]:\[\033[01;44m\]\w\[\033[00m\]\[\e[1;31m\]$(__git_ps1 " (%s)")\[\e[0m\]\$\n>> '
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\ \W$(__git_ps1 " (%s)")]\$ [\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$\n>>'
    #PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
else
    #PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$\n>> '
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(__git_ps1 " (%s)")\$\n>> '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto -lAh'
    alias ll='ls --color=auto -l'

    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
else
    alias ls='ls -lAh'
    alias ll='ls -l'
fi

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'
#alias cake='php /var/www/ACL/cake/console/cake.php'

#custom
alias cake='php /var/www/comercios/cake/console/cake.php'
alias nau='nautilus ./'
alias ssh_xingular='ssh xingular@xingular.net'
alias vi='vim'
alias calc='gnome-calculator'
alias songbird='/home/santiago/Downloads/Songbird/songbird'
alias mongod='/home/santiago/code/mongo/mongodb-linux-x86_64-2.0.6/bin/mongod --dbpath /home/santiago/code/mongo/data/'
alias mongo='/home/santiago/code/mongo/mongodb-linux-x86_64-2.0.6/bin/mongo'
#alias compcompile='compass compile ~/code/python/athlete/athlete/public/'
alias compwatch='compass watch ~/code/python/athlete/athlete/public/'
#alias hyde='python /home/santiago/code/python/hyde/hyde/hyde.py'

alias dev_appserver='/home/santiago/code/python/tools/google_appengine/dev_appserver.py'
#custom directory aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_03
export JDK_HOME=$JAVA_HOME

# Maven
export M2_HOME=/usr/local/maven
export M2=$M2_HOME/bin

export PATH=$M2:$PATH

# Play framework
export PATH=$PATH:/home/santiago/code/scala/tools/play/play-2.0

# Groovy
export GROOVY_HOME="/home/santiago/code/java/tools/groovy-1.8.6/"
export PATH=$PATH:$GROOVY_HOME/bin


# elasticsearch
export ES_JAVA_OPTS="-Xdebug -Xms512m -Xmx512m"

# Virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
#source /usr/local/bin/virtualenvwrapper_lazy.sh

# GIT bash
source ~/.git-completion.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"

#Todo.txt configs
TODO_DIR=~/code/bash/tools/todo
source $TODO_DIR/todo_completion
complete -F _todo t
PATH=$PATH:$TODO_DIR

export TODOTXT_DEFAULT_ACTION=ls
export TODOTXT_SORT_COMMAND='env LC_COLLATE=C sort -k 2,2 -k 1,1n'
alias t='todo.sh -d $TODO_DIR/todo.cfg'
export MAIL=/home/santiago/mail/inbox

export PYTHONPATH=$PYTHONPATH:/home/santiago/tecnocial

alias apagar='sudo shutdown -hP now'
alias reiniciar='sudo shutdown -r now'

delete_recursive() {
    find . -name $1 -print0 | xargs -0 rm -rf
}

grp(){
    grep $1 -InR ./
}
