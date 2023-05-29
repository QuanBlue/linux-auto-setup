#!/usr/bin/env bash

git clone https://github.com/QuanBlue/Linux-Setting.git "$HOME/Linux-Setting"

cd "$HOME/Linux-Setting"

echo $(pwd)
echo $(ls -a)
bash ./prerequisites.sh

bash ./bootstrap.sh