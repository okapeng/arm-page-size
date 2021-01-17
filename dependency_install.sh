#!/bin/bash -x 
apt update
apt-get install apt apt-utils dpkg dpkg-dev module-init-tools pciutils open-iscsi
apt-get install build-essential linux-source bc kmod cpio flex libncurses5-dev libelf-dev libssl-dev libncursesw5-dev
apt-get install libelf-dev systemtap-sdt-dev libslang2-dev libgtk2.0-dev libperl-dev python-dev
apt-get install liblzma-dev libzstd-dev libcap-dev libnuma-dev libbabeltrace-ctf-dev libdw-dev binutils-dev libunwind-dev libaudit-dev libiberty-dev
echo "Please commenting out first two lines in file /lib/modules-load.d/open-iscsi.conf"
