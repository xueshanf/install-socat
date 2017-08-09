#!/bin/sh

echo "Installing socat...."
mkdir -p /opt/bin/socat.d
cp -vrf /socat.d /opt/bin
cp -vf /socat.sh /opt/bin/socat
