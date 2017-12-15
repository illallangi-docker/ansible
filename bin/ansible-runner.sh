#!/usr/bin/env sh
set -e

find "/etc/ansible.d/$@/" -type f -name *.playbook -print | xargs --no-run-if-empty -n1 ansible-playbook -i "localhost," -c local