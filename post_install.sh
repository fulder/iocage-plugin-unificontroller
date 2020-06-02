#!/bin/sh

sysrc -f /etc/rc.conf unifi_enable="YES"
service unifi start 2>/dev/null

echo "Download and installing unifi-poller"
fetch https://github.com/unifi-poller/unifi-poller/releases/download/v2.0.0/unifi-poller-2.0.0_760.amd64.txz
pkg install -y unifi-poller-2.0.0_760.amd64.txz