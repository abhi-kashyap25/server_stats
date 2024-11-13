# <img src="https://img.shields.io/badge/Server-Stats Monitoring Script-blue" /> Server Stats Monitoring Script
====================================================================================

**Monitor Essential Server Performance Metrics with Ease**

`server-stats` is a lightweight Bash script designed to capture real-time data on CPU usage, memory, disk utilization, and identify top processes consuming CPU and memory resources on any Linux server. Ideal for system administrators and developers seeking quick server performance insights without additional software installations.

### **Key Features**
------------------------

* **CPU Usage**: Displays total CPU utilization as a percentage.
* **Memory Usage**: Shows total, used, free memory in MB and calculates usage percentage.
* **Disk Usage**: Provides total, used, and available disk space for the root filesystem, including usage percentage.
* **Top Processes by CPU Usage**: Lists the top 5 processes based on CPU consumption.
* **Top Processes by Memory Usage**: Lists the top 5 processes based on memory consumption.

### **Prerequisites**
----------------------

Ensure your server has:
* **Bash** shell
* Standard Linux utilities: `awk`, `free`, `df`, and `ps`

### **Installation**
------------------

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/username/server-stats.git
   cd server-stats
