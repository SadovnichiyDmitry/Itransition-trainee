#!/bin/bash
_etc_files=$(ls -la /etc/ | grep "^-" | wc -l)
_username=$(whoami)
if [ "$#" != 1 ]; then
echo "you entered wrong number of arguments, please enter one argument."
else
  if [ -d /tmp/$1 ]; then
  echo "directory exists"
  else
  echo "directory not exist, i will create this one"
  mkdir /tmp/$1
  mkdir /tmp/$_username
  for ((n=1; n <= $_etc_files; n++))
    do
    cp /dev/null /tmp/$1/$n
    ln -s /tmp/$1/$n /tmp/$_username/sl$n
  done
  ls -l /tmp/$1 >> filelist.txt
  ls -l /tmp/$_username >> filelist.txt
fi
fi

