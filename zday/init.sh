#!/bin/sh

python3 manage.py migrate || exit 1

exec "$@"
