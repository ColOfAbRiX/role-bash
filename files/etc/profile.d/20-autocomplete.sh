#!/bin/bash

# Auto load all the auto-complete commands.
# Fabrizio Colonna <colofabrix@tin.it>

# Ansible autocompletions
compgen -c | egrep 'register-\w+' |
while read autocomplete_file ; do
    source "$(which $autocomplete_file)"
done

# vim: ft=sh:ts=4:sw=4