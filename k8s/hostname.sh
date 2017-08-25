#!/bin/bash

echo "wx-bgp-205.230" > /etc/hostname
echo "127.0.0.1 wx-bgp-205.230" >> /etc/hosts

sysctl kernel.hostname=wx-bgp-205.230
