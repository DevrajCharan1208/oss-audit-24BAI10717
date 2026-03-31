#!/bin/bash
# Script 1: System Identity Report
# Author: Devraj Charan (24BAI10717)
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Devraj Charan"
SOFTWARE_CHOICE="LibreOffice"

# System info using command substitution
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
# Extracting the pretty name of the distribution from /etc/os-release
DISTRO=$(grep "^PRETTY_NAME" /etc/os-release | cut -d '=' -f 2 | tr -d '"')
CURRENT_DATE=$(date +"%A, %d %B %Y %T")

# --- Display ---
echo "========================================"
echo "           Open Source Audit            "
echo "========================================"
echo "Student : $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "----------------------------------------"
echo "OS/Distro: $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home Dir : $HOME"
echo "Uptime   : $UPTIME"
echo "Date     : $CURRENT_DATE"
echo "----------------------------------------"
echo "License Note: The Linux kernel powering this OS is distributed under the GPL v2 license."
echo "========================================"