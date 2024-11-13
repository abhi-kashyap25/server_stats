# Server Stats Monitoring Script

`server-stats` is a Bash script designed to monitor essential server performance metrics on any Linux server. This lightweight script captures real-time data on CPU usage, memory, disk utilization, and identifies the top processes consuming CPU and memory resources. Ideal for system administrators and developers needing quick insights into server performance without installing additional software.

## Features

- **CPU Usage**: Displays total CPU utilization as a percentage.
- **Memory Usage**: Shows total, used, free memory in MB and calculates usage percentage.
- **Disk Usage**: Provides total, used, and available disk space for the root filesystem, including usage percentage.
- **Top Processes by CPU Usage**: Lists the top 5 processes based on CPU consumption.
- **Top Processes by Memory Usage**: Lists the top 5 processes based on memory consumption.

## Prerequisites

Ensure the following are available on the server:
- **Bash** shell
- Standard Linux utilities like `awk`, `free`, `df`, and `ps`.

## Installation
Clone the repository:
```bash
git clone https://github.com/username/server-stats.git
cd server-stats

## Output Example
When run, the script generates an output like the following:

Server Performance Report - Fri Nov 12 12:34:56 UTC 2024
----------------------------------------
CPU Usage:
  Total CPU Usage: 15%
Memory Usage:
  Total Memory: 8000MB
  Used Memory: 4500MB (56%)
  Free Memory: 3500MB
Disk Usage:
  Total Disk: 50G
  Used Disk: 30G (60%)
  Available Disk: 20G
Top 5 Processes by CPU Usage:
  PID: 1234, Command: apache2, CPU: 20.0%
  PID: 5678, Command: mysql, CPU: 15.5%
  ...
Top 5 Processes by Memory Usage:
  PID: 5678, Command: mysql, Memory: 10.0%
  PID: 1234, Command: apache2, Memory: 9.5%
  ...
----------------------------------------

## Script Overview
CPU Usage Calculation
Reads from /proc/stat twice, calculates total and idle times to determine CPU usage over a 1-second interval.

## Memory Usage Calculation
Utilizes free -m to fetch total, used, and free memory data, then calculates the usage percentage.

Disk Usage Calculation
Uses df -h to retrieve disk space usage on the root filesystem.

Process Monitoring
Utilizes ps to sort processes by CPU and memory consumption, listing the top 5 in each category.

Customization
Modify the script to monitor other filesystems by changing the df command section:

df -h /path/to/other/filesystem
Contributing
Contributions are welcome! Please follow these steps:

Fork the repository.
Create a feature branch (git checkout -b feature-name).
Commit your changes (git commit -am 'Add new feature').
Push to the branch (git push origin feature-name).
Create a pull request.
License
This project is licensed under the MIT License. See the LICENSE file for details.
