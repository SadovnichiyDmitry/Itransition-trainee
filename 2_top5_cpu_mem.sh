#!/bin/bash
echo "top mem:"
ps -eo user,pid,%cpu,%mem --sort=-%mem | head -n 6
echo "top cpu:"
ps -eo user,pid,%cpu,%mem --sort=-%cpu | head -n 6
