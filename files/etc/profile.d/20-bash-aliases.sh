#!/bin/bash
#
# MIT License
#
# Copyright (c) 2017 Fabrizio Colonna <colofabrix@tin.it>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
# System-wide, custom .bashrc file configuration
#

# Skip all for noninteractive shells.
[ -z "$PS1" -o ! -t 1 ] && return

# Some common options for programs
export PS_HEADER="aux"
export NETSTAT_OPTIONS="-tulpn"
export PSTREE_OPTIONS="'paulh"

# BASH in VI Mode
set -o vi

#
# File system
#
eval "$(dircolors)"
alias ls='ls --color=auto'
# List with full details
alias l='ls -l'
# List with full details and hidden files
alias ll='ls -la'
# List with details and order by last modification
alias lt='ls -ltr'
alias l.='ls -d .*'
alias h='history'
alias j='jobs -l'
alias c='clear'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias less='less -r'

#
# Grep
#
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#
# Processes, memory, network
#
# List user processes
alias ups='ps $PS_HEADER | egrep -v "[0-9] \[.*\]"'
# List kernel processes
alias kps='ps $PS_HEADER | head -1; ps $PS_HEADER | egrep --color=never "[0-9] \[.*\]"'
# Disk usage of the current directory
alias dud='du -hd1 2> /dev/null'
# Display information for a mathed process
alias proc='ps $PS_HEADER | head -1; ps $PS_HEADER | tail -n +2 | egrep -v grep | egrep -i'
# Find a command in the hystory
alias cmd='history | egrep -i'

#
# Logs
#
alias log='sedit /var/log/messages'
alias log-secure='sedit /var/log/secure'
alias log-cron='sedit /var/log/cron'
alias follow='tail -0f'
alias sfollow='sudo follow'

#
# Resources info
#
# Display open ports on the external interface
alias ports='netstat $NETSTAT_OPTIONS | egrep -ve "127.0.0.1" -e "p6"'
# Display open ports on the external and local interface
alias portsa='netstat $NETSTAT_OPTIONS | egrep -ve "p6"'
# Look for an open ports on the external interface
alias port='ports | egrep -i '
# Look for an open ports on the external and local interface
alias porta='portsa | egrep -i '
# Display memory infomration
alias meminfo='free -m -l -t; echo; cat /proc/meminfo | grep -i HugePages | cat'
# Display processes oredering by memory usage
alias psmem='ps $PS_HEADER --sort -rss'
# Display first 10 processes oredering by memory usage
alias psmem10='psmem | head -10'
# Display processes oredering by CPU usage
alias pscpu='ps $PS_HEADER --sort -%cpu'
# Display first 10 processes oredering by CPU usage
alias pscpu10='pscpu | head -10'
# Display tree of processes
alias pst='pstree $PSTREE_OPTIONS'
# Display directory sizes
alias dirsizes='du -hd1 . 2> /dev/null | sort -h'

#
# Hashes
#
alias sha1sum='openssl sha -sha1'
alias sha256sum='openssl sha -sha256'
alias sha512sum='openssl sha -sha512'

#
# Some more alias to avoid making mistakes:
#
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias srm='sudo rm'

#
# Editing
#
alias vis='vim "+set si"'
alias edit='vim'
alias svi='sudo vi'
alias sedit='sudo edit'
alias scat='sudo cat'

#
# Hardening
#
alias sudo='sudo '
alias su="echo \"Always use '/bin/su –' for security reasons\""

#
# Various
#
alias diff='colordiff'
alias bc='bc -l'
alias wget='wget -c'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime='now'
alias nowdate='date +"%d-%m-%Y"'
alias iptraf-ng='TERM=xterm iptraf-ng'

# vim: ft=sh:ts=4:sw=4