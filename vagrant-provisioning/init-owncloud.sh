#!/bin/bash

owncloud_dir=/opt/owncloud;
dirs=(apps data config);

for name in ${dirs[@]}; do
  dir=$owncloud_dir/$name;
  if [ ! -d "$dir" ]; then
    echo "Creating $dir"
    mkdir $dir
  fi
done
