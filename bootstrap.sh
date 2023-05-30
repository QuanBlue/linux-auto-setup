
#!/usr/bin/env bash

project_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# We have cd to directory to make sure find only searches in this directory
cd "$project_dir"


# Install all packages using snap, apt,...
for file in Package_list/*; do 
  echo "============================================"
  echo "======== $file ========"
  echo "============================================"

  case $file in
    "apt_applist.txt") cmd="apt -y" ;;
    "snap_applist.txt") cmd="snap" ;;
  esac

  while read -r package; do
    if [[ ${package:0:1} == "#" || $package == "" ]]; then continue; fi

    echo "[Info] Installing $package..."
    sudo $cmd install $package
    echo "[Info] Install $package complete"
    echo "------------------------------------------"
  done < $file
done


# Install all packages
for directory in Package/*; do
  # find setup file then run it
  find $directory -name "setup.sh" | while read setup; do
    echo "-------- $directory -----------"
    # NOTE: We have to cd back to maintain relative path
    cd "$project_dir"

    echo "[Info] Installing $directory..."
    . ./$setup
    echo "[Info] Install $directory complete"

  done
done


