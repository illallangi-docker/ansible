#!/usr/bin/env sh
set -e

/usr/local/bin/ansible-runner.sh user
/usr/local/bin/ansible-runner.sh container

sudo -H -i -n -u \#${UID:-0} "$@"
