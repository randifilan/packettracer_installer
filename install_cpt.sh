#!/bin/bash
##
## Cisco Packet Tracer Installer
##
## Author : Gusriandi / Randy Filan
## Email  : randimaskil9@gmail.com / randi@cit.co.id
##
## Licensed under GPL V3
## Please refer to https://www.gnu.org/licenses/gpl-3.0.en.html
##
## How to use this script
## 1. run the script using privileged user or using sudo command
## 2. don't forget to pass the user of the program in the command argument
##
## example
## sudo bash install_cpt.sh
##
cd /tmp
mkdir /opt/pt
apt update && apt -y install tar wget libqt5webkit5 libqt5multimediawidgets5 libqt5svg5 libqt5script5 libqt5scripttools5 libqt5sql5
wget -O cpt.tar.gz https://www.netacad.com/portal/sites/default/files/resources/PacketTracer/packet_tracer_7.1.1_for_linux_64_bit.tar.gz
wget -O libpng.deb http://ftp.br.debian.org/debian/pool/main/libp/libpng/libpng12-0_1.2.50-2+deb8u3_amd64.deb
wget -O libicu.deb http://mirrors.kernel.org/ubuntu/pool/main/i/icu/libicu52_52.1-3ubuntu0.8_amd64.deb
wget -O /usr/share/applications/packettracer.desktop https://github.com/randifilan/packettracer_installer/blob/master/packettracer.desktop
tar -xvzf cpt.tar.gz -C /opt/pt
apt -y install ./libpng.deb
apt -y install ./libicu.deb
