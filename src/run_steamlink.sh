#!/bin/sh

hldir="$(dirname "$(dirname "$(readlink "$0")")")"

if [ -x "$hldir/hl.sh" ]; then
  exec "$hldir/hl.sh" -game steamlink "$@"
else
  echo "Cannot find hl.sh!"
  echo "Please use install.sh to install to the appropriate directory."
  exit 1
fi

