#!/bin/bash

# color-ls initialization

# Skip all for noninteractive shells.
[ -z "$PS1" -o ! -t 1 ] && return

#when USER_LS_COLORS defined do not override user LS_COLORS, but use them.
if [ -z "$USER_LS_COLORS" ]; then
  INCLUDE=
  COLORS=

  for colors in "$HOME/.dir_colors.$TERM" "$HOME/.dircolors.$TERM" \
      "$HOME/.dir_colors" "$HOME/.dircolors"; do
    [ -e "$colors" ] && COLORS="$colors" && \
    INCLUDE="`/usr/bin/cat "$COLORS" | /usr/bin/grep '^INCLUDE' | /usr/bin/cut -d ' ' -f2-`" && \
    break
  done

  [ -z "$COLORS" ] && [ -e "/etc/DIR_COLORS.$TERM" ] && \
  COLORS="/etc/DIR_COLORS.$TERM"

  [ -z "$COLORS" ] && [ -e "/etc/DIR_COLORS.256color" ] && \
  [ "x`/usr/bin/tty -s && /usr/bin/tput colors 2>/dev/null`" = "x256" ] && \
  COLORS="/etc/DIR_COLORS.256color"

  [ -z "$COLORS" ] && [ -e "/etc/DIR_COLORS" ] && \
  COLORS="/etc/DIR_COLORS"

  # Existence of $COLORS already checked above.
  [ -n "$COLORS" ] || return

  if [ -e "$INCLUDE" ];
  then
    TMP="`/usr/bin/mktemp .colorlsXXX -q --tmpdir=/tmp`"
    [ -z "$TMP" ] && return

    /usr/bin/cat "$INCLUDE" >> $TMP
    /usr/bin/grep -v '^INCLUDE' "$COLORS" >> $TMP

    eval "`/usr/bin/dircolors --sh $TMP 2>/dev/null`"
    /usr/bin/rm -f $TMP
  else
    eval "`/usr/bin/dircolors --sh $COLORS 2>/dev/null`"
  fi

  [ -z "$LS_COLORS" ] && return
  /usr/bin/grep -qi "^COLOR.*none" $COLORS >/dev/null 2>/dev/null && return
fi

#
# Settings for the user root
#
if [ $UID -eq 0 ]; then
    PS1="\e[01;31m$PS1\e[00m"
fi

unset TMP COLORS INCLUDE

# vim: ft=sh:ts=4:sw=4