**Title: Mastering Advanced Linux Shell Scripting for DevOps: User Management Essentials**

Welcome to Day 5 of the DevOps challenge! Today, we focus on mastering Advanced Linux Shell Scripting, specifically honing in on user management within Linux environments.

In the realm of DevOps, automation is crucial for efficiency. Advanced shell scripting empowers engineers to automate tasks, streamline workflows, and ensure system integrity. User management is a cornerstone of system security and stability. From provisioning accounts to managing permissions, these skills are essential for maintaining a robust infrastructure.

Throughout this session, we'll explore practical examples and hands-on exercises to deepen your understanding. By the end, you'll have the expertise to elevate your user management practices, driving efficiency and innovation within your DevOps workflows. Let's dive in and unlock the full potential of Advanced Linux Shell Scripting together!

Example 1:
Task: Write a bash script named createDirectories.sh that creates a specified number of directories with dynamic names when executed with three arguments.

The script should create directories with names starting from the specified directory name appended with numbers in the range from the start number to the end number.

For example, if the script is executed with the arguments day 1 90, it should create directories named day1, day2, day3, and so on, up to day90.

Execution:
The script should be executable with the following command:

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

for ((num=1; num<=90; num++))
do
        mkdir "${custom_dir}${num}"
done


Example 2:To create a backup script in Bash that backs up files from a source directory to a target directory.

This script effectively creates a backup of the files in the source directory and stores the backup archive in the specified target directory with a timestamped filename.

Execiution:
#!/bin/bash

<<comment
This script will take backup
from source to target directory
comment

src_dir="/home/ubuntu/scripts"
tgt_dir="/home/ubuntu/backups"

backup_filename="backup_($date +%Y-%m-%d-%H-%M-%S).tar.gz"

echo "Backing up to $backup_filename...."

tar -czvf "${tgt_dir}/${backup_filename}" "${src_dir}"

echo "Backup Complete"

The script begins with a comment block (<<comment ... comment) that describes the purpose of the script, which is to take backups from a source directory to a target directory.
src_dir: Specifies the source directory from which files will be backed up. In this case, it's set to /home/ubuntu/scripts.
tgt_dir: Specifies the target directory where the backup files will be stored. It's set to /home/ubuntu/backup.
backup_filename: This variable is assigned a value using command substitution ($(date +%Y-%m-%d-%H-%M-%S)), which generates a timestamp in the format YYYY-MM-DD-HH-MM-SS for the backup filename.
The script echoes a message indicating that the backup process is initiated, showing the name of the backup file ($backup_filename).
It then uses the tar command to create a compressed archive (-czvf) of the source directory ($src_dir). The archive is named using the backup_filename variable, and it's saved in the target directory ($tgt_dir).
After the backup process is completed, the script prints a message indicating that the backup is complete.
**
About Cron and Crontab, to automate the backup Script:**
Cron is a time-based job scheduler in Unix-like operating systems, allowing users to automate tasks by scheduling them to run at specific times or intervals. 
Crontab, a command-line utility, enables users to create, modify, or delete cron jobs. Each user typically has their own crontab file, containing scheduling information for their tasks. 
By editing the crontab file, users can schedule the execution of scripts or commands, such as backup tasks, at desired intervals without manual intervention.
This automation streamlines processes like backup management, ensuring regular and timely execution of essential tasks without the need for manual intervention.


