#!/bin/bash

# Custom MOTD
# Fabrizio Colonna <colofabrix@tin.it>

# Skip all for noninteractive shells.
[ -z "$PS1" -o ! -t 1 ] && return

# Skip when explicitly instructed
[ "$SKIP_MOTD" == "true" ] && return

# Show MOTD only for interactive shells
if [ -t 1 ] && [ -d /etc/motd.d ] ; then
    for FILE in /etc/motd.d/* ; do
        [ $FILE != "motd" -a -x $FILE ] && $FILE
    done
fi

# vim: ft=sh:ts=4:sw=4