
#!/bin/bash

# Linux System Health Reporter
#################################
#  AUTHOR : MANISH
#  DATE   : 11/10/26
#  VERSION: v1
################################
###############################


echo "================================"
echo "    BASIC  LINUX HEALTH REPORT"
echo "================================"

echo ""
echo "Hostname:"
hostname

echo ""
echo "Operating System:"
cat /etc/os-release | grep PRETTY_NAME

echo ""
echo "System Uptime:"
uptime -p

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h /
