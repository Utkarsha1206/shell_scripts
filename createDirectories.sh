#!/bin/bash
<<task
Create directories with given 
range of arguments
task

echo "Enter the Name of root directory:"
read root_dir
mkdir $root_dir && cd $root_dir
echo "Enter the custom directory Name:"
read custom_dir

for ((num=1; num<=50; num++))
do 
	mkdir "${custom_dir}${num}"
done
