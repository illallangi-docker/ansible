#!/usr/bin/env sh
set -e

/usr/local/bin/ansible-runner.sh container

exec "$@"
