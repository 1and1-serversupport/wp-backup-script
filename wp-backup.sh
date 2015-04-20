#/bin/bash


# Little script to backup a wordpress site
# 
# 20.04.2015

# Define your path to the data here:
path=/path/to/webspace/of/wordpress

# define your database name here:
database=wour_database_name

# Define & create your backup directory here:
backup_dir=/path/to/your/wp-backup
mkdir $backup_dir

# Define file with mysql password:
passwd=/path/to/.mysqlpass.txt

# Create the tar file of the space data:
tar -cf $backup_dir/wordpress.tar $path

# Create database dump and move it to backup dir:
mysqldump -uroot -p`cat $passwd` $database > wordpress.dump
mv wordpress.dump /home/denis/wp-backup

# List the created filesi (optional). Uncomment to use with output:
# echo " "
# echo "the following files were created:"
# echo " "
# ls -lah $backup_dir

# Send a mail if finished (optional). Uncomment to use:
# mailto=your_adress
# site_name=your_wordpress_Domain
# 
# echo "Backup of $site_name was finished.
# The following files were created:
# ls -lah $backup_dir" | mail -s "wp-backup of $site_name" $mailto

# Use a rotation (recommended fpr crontab usage):
# find $backup_dir -ctime -7 -exec rm -rf wordpress.* {} \;
