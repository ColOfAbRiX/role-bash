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
# BASH ANSI/VT100 Colours
# See: http://misc.flogisoft.com/bash/tip_colors_and_formatting
#

# Skip all for noninteractive shells.
[ -z "$PS1" -o ! -t 1 ] && return

# Foreground colors
export C_FORE_DEFAULT="\e[39m"
export C_FORE_BLACK="\e[30m"
export C_FORE_RED="\e[31m"
export C_FORE_GREEN="\e[32m"
export C_FORE_YELLOW="\e[33m"
export C_FORE_BLUE="\e[34m"
export C_FORE_MAGENTA="\e[35m"
export C_FORE_CYAN="\e[36m"
export C_FORE_LIGHT_GRAY="\e[37m"
export C_FORE_DARK_GRAY="\e[90m"
export C_FORE_LIGHT_RED="\e[91m"
export C_FORE_LIGHT_GREEN="\e[92m"
export C_FORE_LIGHT_YELLOW="\e[93m"
export C_FORE_LIGHT_BLUE="\e[94m"
export C_FORE_LIGHT_MAGENTA="\e[95m"
export C_FORE_LIGHT_CYAN="\e[96m"
export C_FORE_WHITE="\e[97m"
# Background colors
export C_BACK_DEFAULT="\e[49m"
export C_BACK_BLACK="\e[40m"
export C_BACK_RED="\e[41m"
export C_BACK_GREEN="\e[42m"
export C_BACK_YELLOW="\e[43m"
export C_BACK_BLUE="\e[44m"
export C_BACK_MAGENTA="\e[45m"
export C_BACK_CYAN="\e[46m"
export C_BACK_LIGHT_GRAY="\e[47m"
export C_BACK_DARK_GRAY="\e[100m"
export C_BACK_LIGHT_RED="\e[101m"
export C_BACK_LIGHT_GREEN="\e[102m"
export C_BACK_LIGHT_YELLOW="\e[103m"
export C_BACK_LIGHT_BLUE="\e[104m"
export C_BACK_LIGHT_MAGENTA="\e[105m"
export C_BACK_LIGHT_CYAN="\e[106m"
export C_BACK_WHITE="\e[107m"
# Formatting
export C_FORMAT_RESET_ALL="\e[0m"
export C_FORMAT_BOLD="\e[1m"
export C_FORMAT_RESET_BOLD="\e[21m"
export C_FORMAT_DIM="\e[2m"
export C_FORMAT_RESET_DIM="\e[22m"
export C_FORMAT_UNDERLINED="\e[4m"
export C_FORMAT_RESET_UNDERLINED="\e[24m"
export C_FORMAT_BLINK="\e[5m"
export C_FORMAT_RESET_BLINK="\e[25m"
export C_FORMAT_REVERSE="\e[7m"
export C_FORMAT_RESET_REVERSE="\e[27m"
export C_FORMAT_HIDDEN="\e[8m"
export C_FORMAT_RESET_HIDDEN="\e[28m"

# vim: ft=sh:ts=4:sw=4