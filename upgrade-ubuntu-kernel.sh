#!/bin/bash
clear
mkdir kernel
cd kernel
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.18.3/linux-headers-4.18.3-041803_4.18.3-041803.201808180530_all.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.18.3/linux-headers-4.18.3-041803-generic_4.18.3-041803.201808180530_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.18.3/linux-headers-4.18.3-041803-lowlatency_4.18.3-041803.201808180530_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.18.3/linux-image-unsigned-4.18.3-041803-generic_4.18.3-041803.201808180530_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.18.3/linux-image-unsigned-4.18.3-041803-lowlatency_4.18.3-041803.201808180530_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.18.3/linux-modules-4.18.3-041803-generic_4.18.3-041803.201808180530_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.18.3/linux-modules-4.18.3-041803-lowlatency_4.18.3-041803.201808180530_amd64.deb

chmode +x *.deb
sudo dpkg -i *.deb

echo "Successfully Install New Kernel v4.18"
uname -sr

echo "If You See Your Kernel Version Still The Same Please Reboot Your System"
