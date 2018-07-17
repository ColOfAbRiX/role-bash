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
# History configuration (it also affects history2syslog.sh)
#

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