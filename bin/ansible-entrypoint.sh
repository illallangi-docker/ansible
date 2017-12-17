#!/usr/bin/env sh
set -e

/usr/local/bin/ansible-runner.sh user
/usr/local/bin/ansible-runner.sh container

sudo -H -n -E -u \#${UID:-0} "$@"
