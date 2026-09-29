#!/bin/bash

echo "======================================"
echo "      SYSTEM HEALTH MONITOR"
echo "======================================"

echo
echo "Date and Time:"
date

echo
echo "Current User:"
whoami

echo
echo "Hostname:"
hostname

echo
echo "--------------------------------------"
echo "System Uptime"
echo "--------------------------------------"
uptime

echo
echo "--------------------------------------"
echo "Memory Usage"
echo "--------------------------------------"
free -h

echo
echo "--------------------------------------"
echo "Disk Usage"
echo "--------------------------------------"
df -h

echo
echo "--------------------------------------"
echo "CPU Information"
echo "--------------------------------------"
lscpu | head -10

echo
echo "--------------------------------------"
echo "Top 10 Running Processes"
echo "--------------------------------------"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head

echo
echo "======================================"
echo "System Health Check Completed"
echo "======================================"
