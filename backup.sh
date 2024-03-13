#!/bin/bash

<<comment
This script will take backup
from source to target directory
comment

src_dir="/home/ubuntu/scripts"
tgt_dir="/home/ubuntu/backups"

backup_filename="backup_$(date +%Y-%m-%d-%H-%M-%S).tar.gz"

echo "Backing up to $backup_filename...."

tar -czvf "${tgt_dir}/${backup_filename}" "${src_dir}"

echo "Backup Complete"

        
