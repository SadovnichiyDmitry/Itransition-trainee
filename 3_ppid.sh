#!/bin/bash
echo "insert PID:"
read PID
ps -f --ppid $PID
