#!/bin/bash


if [ ! -f packer.zip ] ; then
  curl -L https://releases.hashicorp.com/packer/1.0.0/packer_1.0.0_linux_amd64.zip?_ga=1.155119281.822261056.1493217676 > packer.zip
  unzip packer.zip
fi

chmod +x packer
./packer build -only=virtualbox-iso arch-template.json

mv output/packer_arch_virtualbox.box arch_$(date +"%Y-%d-%m")_x86_64.box

