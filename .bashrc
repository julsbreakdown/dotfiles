# ~/.bashrc: executed by bash(1) for non-login shells.
export LESS='-xfr'
export EDITOR=vim

bindkey "\033[1~" beginning-of-line
bindkey "\033[4~" end-of-line
#basheditupdate
alias editbash='vim ~/.bashrc'
alias updatebash='source ~/.bashrc'

# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
export HISTCONTROL=ignoredups
eval `dircolors`
alias ls='ls $LS_OPTIONS'
alias l='ls $LS_OPTIONS -Fahl'

# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# temperature monitoring
alias tp='watch -n 1 -d sensors'
#pens current directory in a file explorer
alias explore='nautilus .'

#Opens current directory in a file explorer with super user privileges
alias suexplore='sudo nautilus .'

#Opens current directory in Ubuntu's Disk Usage Analyzer GUI with super user privileges in the background
alias analyze='gksudo baobab . &'

#Opens a GUI text editor in the background. Can obviously be replaced with your favorite editor
alias text='gedit &'
#Same as above with super user privileges
alias sutext='gksudo gedit &'

#Opens a file with whatever program would open by double clicking on it in a GUI file explorer
#Usage: try someDocument.doc
alias try='gnome-open'

#lists contents of current directory with file permisions
alias ll='ls -l -sort'

#list all directories in current directories
alias ldir='ls -l | grep ^d'

#self explanatory
alias ..='cd ..'
alias ...='cd ../../'

#show aliases
alias a='echo "------------Your aliases------------";alias'
#Apply changes to aliases
alias sa='source ~/.bash_aliases;echo "Bash aliases sourced."'
#Edit Aliases
alias via='gksudo gedit ~/.bash_aliases &'

if [ `id -u` -eq 0 ]; then
  export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/usr/bin/X11:/usr/games"
fi
# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ] ; then
   PATH=~/bin:"${PATH}"
fi

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# Load in the git branch prompt script.
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUPSTREAM=verbose
export GIT_PS1_DESCRIBE_STYLE=branch
export GIT_PS1_SHOWCOLORHINTS=1
export PROMPT_COMMAND='__git_ps1 "\[\e[1;32m\]\u\[\e[0;39m\]@\[\e[1;36m\]\h\[\e[0;39m\]:\[\e[1;34m\]\w\[\e[1;39m\]" "\n\[\e[0;39m\]$ "'

#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\096[00m\]:\[\096[01;34m\]\w$(git_branch)\[\096[00m\]\n\$ ' 
# git
#function git_branch {
#    _branch="$(git branch 2>/dev/null | sed -e "/^\s/d" -e "s/^\*\s//")"
#    test -n "$_branch" && echo -e " \e[0;32m[git::$_branch]"
#}

# docker
#alias docker-gc='docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v /etc:/etc:ro spotify/docker-gc'

# Utilisation de nodejs 6
#export NVM_DIR="/$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/nvm.sh" ] && nvm use 6 # and use node 6
alias ll='ls -lh'
alias la='ls -A'
alias l='ls -CF'

#remove beep
set bell-style none

#QGIS
alias qgis_dev='/home/jwaddle/dev/cpp/QGIS/build-master/output/bin/qgis'
