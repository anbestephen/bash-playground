# --- a demo Makefile with some targets
# --- these targetes were tested to work on Ubuntu 16.04.1 LTS box

all: help getOSInfo getUserInfo getDiskInfo
.DEFAULT_GOAL := help
.PHONY: all

help:
        @echo "Displays different informations"
        @echo ""
        @echo "Targets:"
        @echo "  getOSInfo        Displays detail info on Operating System"
        @echo "  getCPUInfo       Displays CPU information"
        @echo "  getUserInfo      Displays Detail information on Current User"
        @echo "  getDiskInfo      Displays information on Disk usage"
        @echo ""

# ---
# --- displays OS related information
# ---
getOSInfo:
        @lsb_release -a

# ---
# --- displays User related information
# ---
getUserInfo:
        @who -H

# ---
# --- displays disk related information
# ---
getDiskInfo:
        @sudo lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL

# ---
# --- displays CPU related information
# ---
getCPUInfo:
        @lscpu
