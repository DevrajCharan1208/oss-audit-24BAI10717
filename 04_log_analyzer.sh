#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./04_log_analyzer.sh /var/log/syslog "error"
# Author: Devraj Charan (24BAI10717)

LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error'
COUNT=0

# Do-while style retry loop if the file is empty or doesn't exist
while [ -z "$LOGFILE" ] || [ ! -f "$LOGFILE" ] || [ ! -s "$LOGFILE" ]; do
    echo "Error: File not found or is empty."
    read -p "Please enter a valid log file path (e.g., /var/log/syslog): " LOGFILE
done

echo "Analyzing $LOGFILE for keyword: '$KEYWORD'..."

# Read line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "========================================"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "========================================"

# Print the last 5 matching lines
if [ $COUNT -gt 0 ]; then
    echo "Last 5 occurrences:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi