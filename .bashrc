#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

#PS1='[\u@\h \W]\$ '
PS1='\W > '

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

# exit
alias q='exit'

# pacman
alias pmq='pacman -Q'
alias pmsy='sudo pacman -Sy'
alias pmsyy='sudo pacman -Syy'

# ls
alias ls='ls -hF --color=auto'
alias lr='ls -R'
alias ll='ls -l'
alias la='ll -a'
alias lx='ll -BX'
alias lz='ll -rS'
alias lt='ll -rt'

# vim
alias vi='vim'
alias vi-bashrc='vim /home/alrshdn/.bashrc'

# zathura
alias za='zathura'

# cd
alias cdal='cd /home/alrshdn/'
alias cdenv='cd /home/alrshdn/env'
alias cduni='cd /home/alrshdn/uni'
alias cdyt='cd /home/alrshdn/yt'
alias cdproj='cd /home/alrshdn/dev/projects'
alias cdcert='cd /home/alrshdn/cert'
alias cdict='cd /home/alrshdn/cert/ict'

# cd for projects
alias cd-minim-al='cd /home/alrshdn/dev/projects/minim-al'
alias cd-template-al='cd /home/alrshdn/dev/projects/minim-al/template-al'
alias cd-chat-al='cd /home/alrshdn/dev/projects/minim-al/chat-al'

# touch
alias to='touch'

# source
alias so='source'

# system
alias shutdown-now='shutdown -h now'

export ANDROID_HOME=~/android-sdk
