#!/usr/bin/env bash

info() {
    tput bold;tput setaf "6";tput setab "7";echo "$1";tput sgr0;tput el;
}

# We have cd to directory to make sure find only searches in this directory
project_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$project_dir"


# Install all packages using snap, apt,...
info "Install all packages using snap, apt,..."
for file in Package_list/*; do 
  info "============================================"
  info "======== $file ========"
  info "============================================"

  case $file in
    "apt_applist.txt") cmd="apt -y" ;;
    "snap_applist.txt") cmd="snap" ;;
  esac

  while read -r package; do
    if [[ ${package:0:1} == "#" || $package == "" ]]; then continue; fi

    info "[Install] $package"
    info "$cmd install $package"
    sudo $cmd install $package
    echo "------------------------------------------"
  done < $file
done


# Install all packages
info "Install all packages"
for directory in Package/*; do
  # find setup file then run it
  find $directory -name "setup.sh" | while read setup; do
    info "-------- $directory -----------"
    # NOTE: We have to cd back to maintain relative path
    cd "$project_dir"

    info "[Install] $directory"
    . ./$setup

  done
done


