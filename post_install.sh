#!/bin/sh

sysrc -f /etc/rc.conf unifi_enable="YES"
service unifi start 2>/dev/null



