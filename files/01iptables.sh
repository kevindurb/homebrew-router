#!/bin/sh

/sbin/iptables-restore < /etc/networkd-dispatcher/iptables_rules
