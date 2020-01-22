#!/bin/bash

etc_files=$(ls -la /etc/ | grep "^-" | wc -l)
username=$(whoami)

if [ "$#" != 1 ]; then
  echo "please enter one argument."
else
  mkdir -p /tmp/$1/$username
  for ((n=1; n <= $etc_files; n++)); do
    touch /tmp/$1/$n
    ln -s /tmp/$1/$n /tmp/$1/$username/sl$n
  done
  ls -lR /tmp/$1 >> filelist.txt
fi
