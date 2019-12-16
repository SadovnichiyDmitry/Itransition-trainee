#!/bin/bash
me=$(whoami)
cat /etc/passwd | grep $me | cut -f 6 -d:
