#!/usr/bin/env bash

sudo apt-get install fuse -y
sudo modprobe fuse
sudo usermod -a -G fuse $USER
