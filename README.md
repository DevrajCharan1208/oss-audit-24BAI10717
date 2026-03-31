# 🐧 LibreOffice Audit & FOSS Exploration

**Institution:** VIT Bhopal University  
**Course:** Open Source Software (NGMC)  
**Faculty:** Pradeep Kumar Mishra  

## 👨‍🎓 Student Details
* **Name:** Devraj Charan
* **Registration Number:** 24BAI10717
* **Semester:** B.Tech 5th Semester

---

## 📖 Project Overview

This repository contains my capstone project focusing on **LibreOffice**, the world's leading open-source office productivity suite. Licensed under the Mozilla Public License 2.0 (MPL 2.0), LibreOffice stands as a prime example of community-driven software development.

This project investigates the philosophy behind open-source software, examining LibreOffice's historic 2010 fork from OpenOffice.org following Oracle's acquisition of Sun Microsystems. Alongside the theoretical research, this repository includes five practical bash scripts that demonstrate core Linux functionalities, file permissions, and process automation.

---

## 🛠️ Custom Shell Scripts

The following scripts were developed to automate system checks, audit directories, and analyze log files as part of the course requirements.

| Script Name | Purpose | Key Linux Concepts Used |
| :--- | :--- | :--- |
| `01_system_identity.sh` | Generates a welcome screen detailing the Linux distribution, kernel, uptime, and the open-source license covering the OS. | Variables, command substitution `\$()`, formatting |
| `02_package_inspector.sh` | Checks if LibreOffice is installed via `dpkg`, prints its version, and outputs a custom FOSS philosophy note. | `if-else`, `case` statements, `dpkg`, `grep`, `awk` |
| `03_disk_auditor.sh` | Loops through critical system directories and the LibreOffice config folder to report size, permissions, and ownership. | `for` loops, arrays, `ls -ld`, `du`, `cut` |
| `04_log_analyzer.sh` | Reads a log file to count keyword occurrences (e.g., errors). Includes a retry mechanism for empty files and prints the last 5 matches. | `while read`, command-line arguments `\$1`, `tail` |
| `05_manifesto_generator.sh` | Interactively asks three questions to generate a personalized open-source manifesto and saves it to a text file. | `read` (user input), file redirection `>`, string concatenation |

---

## 🚀 How to Execute on Linux

**1. Clone the repository:**
```bash
git clone [https://github.com/yourusername/oss-audit-24BAI10717.git](https://github.com/yourusername/oss-audit-24BAI10717.git)
cd oss-audit-24BAI10717
```

**2. Grant execution permissions:**
```bash
chmod +x *.sh
```

**3. Run the scripts:**
```bash
./01_system_identity.sh
./02_package_inspector.sh
./03_disk_auditor.sh

# Script 4 requires a log file path to analyze (default keyword is "error")
./04_log_analyzer.sh /var/log/syslog

# Script 5 is interactive
./05_manifesto_generator.sh
```

---

## 💡 Dependencies
* A Linux-based operating system (tested on Ubuntu/Debian architecture).
* Standard GNU core utilities (`awk`, `grep`, `cut`, `du`, `dpkg`).
* Bash shell (version 4.x or later).
