#!/bin/bash

files=$(ls)
exclude='*.jpg'

echo $files

if [ ! -d .backups ]; then
  mkdir .backups;
  echo 'created backup folder'
else
  echo 'backup folder exists'
fi

if [ ! -z "$files" ]; then
  chronological_name=$(date +%Y%m%d%H%M)
  echo 'new chronological name '$chronological_name
  tar_name=".backups/${chronological_name}.tar.gz"
  echo $tar_name
  tar --exclude=$exclude -cvf $tar_name $files
  
else
  echo 'no files for backup'
fi


