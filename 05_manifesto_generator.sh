#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Devraj Charan (24BAI10717)
# Note on Aliases: You can create a shortcut for this by adding `alias manifesto='./05_manifesto_generator.sh'` to your ~/.bashrc

echo "========================================"
echo " Generate Your Open Source Manifesto"
echo "========================================"
echo ""

# Ask three interactive questions
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose the paragraph
PARAGRAPH="On this day, $DATE, I affirm my belief in the open-source philosophy. My daily workflow relies on community-built tools like $TOOL. To me, software freedom ultimately means $FREEDOM—the ability to study, modify, and improve the digital world around us. If I were to contribute a major project to this ecosystem, I would build $BUILD and license it openly, ensuring the community could benefit from and build upon my work."

# Write the paragraph to the output file
echo "$PARAGRAPH" > "$OUTPUT"

echo ""
echo "========================================"
echo "Manifesto saved successfully to: $OUTPUT"
echo "========================================"
# Display the file contents
cat "$OUTPUT"