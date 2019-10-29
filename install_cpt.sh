#!/bin/bash

cd /tmp
wget -O cpt.tar.gz https://www.netacad.com/portal/sites/default/files/resources/PacketTracer/packet_tracer_7.1.1_for_linux_64_bit.tar.gz
apt -y install tar
mkdir /opt/pt
tar -xvzf cpt.tar.gz
