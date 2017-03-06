# a demo Makefile with some targets
all: getOSInfo getUserInfo getDiskInfo
.PHONY: all

getOSInfo:
        @uname -a
getUserInfo:
        @whoami
getDiskInfo:
        @df
