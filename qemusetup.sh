#!/bin/bash

sudo add-apt-repository --yes ppa:canonical-server/server-backports
sudo apt-get update
sudo apt install -y qemu-system
