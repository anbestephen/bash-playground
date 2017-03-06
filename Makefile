# a demo Makefile with some targets
# these targetes were tested to work on Ubuntu 16.04.1 LTS box

all: getOSInfo getUserInfo getDiskInfo
.PHONY: all

getOSInfo:
        @lsb_release -a
getUserInfo:
        @who -H
getDiskInfo:
        @sudo lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL

