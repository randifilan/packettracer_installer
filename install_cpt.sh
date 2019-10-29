#!/bin/bash

cd /tmp
mkdir /opt/pt
sudo apt update && apt -y install tar wget libqt5webkit5 libqt5multimediawidgets5 libqt5svg5 libqt5script5 libqt5scripttools5 libqt5sql5
wget -O cpt.tar.gz https://www.netacad.com/portal/sites/default/files/resources/PacketTracer/packet_tracer_7.1.1_for_linux_64_bit.tar.gz
tar -xvzf cpt.tar.gz -C /opt/pt
wget -O libpng.deb http://ftp.br.debian.org/debian/pool/main/libp/libpng/libpng12-0_1.2.50-2+deb8u3_amd64.deb
wget -O libicu.deb http://mirrors.kernel.org/ubuntu/pool/main/i/icu/libicu52_52.1-3ubuntu0.8_amd64.deb
wget -O packettracer.desktop https://github.com/randifilan/packettracer_installer/blob/master/packettracer.desktop
cp packettracer.desktop /usr/share/applications/
apt -y install ./libpng.deb
apt -y install ./libicu.deb
