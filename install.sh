#!/usr/bin/env bash

git clone https://github.com/QuanBlue/Linux-Bootstrap.git "$HOME/Linux-Bootstrap"

cd "$HOME/Linux-Bootstrap"

. ./prerequisites.sh
. ./bootstrap.sh

