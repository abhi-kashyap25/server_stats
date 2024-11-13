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
