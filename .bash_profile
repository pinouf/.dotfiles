# bash completion by homebrew 
if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi

# color bash
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# editor par defaut
export EDITOR=vim 

#ALIAS
alias ll='ls -lhA'
alias mysql_stop='launchctl unload Library/LaunchAgents/homebrew.mxcl.mysql.plist' 
alias mysql_start='launchctl load Library/LaunchAgents/homebrew.mxcl.mysql.plist' 
alias memcached_start='memcached -d -m 2048 -l 127.0.0.1 -p 11211'
alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias memcached_run='/usr/local/bin/memcached'

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

# set a fancy prompt (non-color, unless we know we "want" color)
PS1="[\t] \[\e[01;32m\]\u@\h\[\e[00m\]:\[\e[01;34m\]\w\[\e[00m\]\$ "

#change le php de notre CLI -) pour utiliser celui de homebrew en ajouant le chemin ...
export PATH=/usr/local/Cellar/php53/5.3.17/bin:$PATH

#change le php de notre CLI pour utiliser de homebrew PHP 5.4
#export PATH="$(brew --prefix josegonzalez/php/php54)/bin:$PATH"

#ajout du chemin sbin dans le $PATH ( pour apache de homebrew )
export PATH=/usr/local/sbin/:$PATH

#change la version de git pour la surcharger avec celle de homebrew
export PATH=/usr/local/Cellar/git/1.7.12.1/bin:$PATH
