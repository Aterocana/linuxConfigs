#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#Per ottenere il prompt colorato

if [[ ${EUID} == 0 ]] ; then
	sq_color="\[\033[0;31m\]"
else		
	sq_color="\[\033[0;32m\]"
fi

PS1="$sq_color\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[01;37m\]\342\234\227$sq_color]\342\224\200\")[\[\033[01;37m\]\t$sq_color]\342\224\200[\[\033[01;37m\]\u@\h$sq_color]\n\342\224\224\342\224\200\342\224\200> \[\033[01;37m\]\W$sq_color $ \[\033[01;37m\]>>\\[\\033[0m\\] "
export LD_LIBRARY_PATH=~/Downloads
unset sq_color
