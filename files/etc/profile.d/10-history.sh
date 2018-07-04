#!/bin/bash

# History configuration (it also affects history2syslog.sh)
# Fabrizio Colonna <colofabrix@tin.it>

# Skip all for noninteractive shells.
[ -z "$PS1" -o ! -t 1 ] && return

# Turn on parallel history
shopt -s histappend
history -a

# Time formatting
export HISTTIMEFORMAT="%y-%m-%d %T "

# Big history
export HISTSIZE=5000
export HISTFILESIZE=100000

# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups

# Ignore common commands
export HISTIGNORE='ls:bg:fg:history:clear:l:ll:cat:man'

# Turn on checkwinsize
shopt -s checkwinsize

# Force multiline commands into one line
shopt -s cmdhist

# Disable history expansion (the exclamation mark)
#set +o histexpand

# vim: ft=sh:ts=4:sw=4