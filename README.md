# Wordpress backup script

With this script you can easily perform a wordpress backup. It includes webspace and database.
You can use the script in 3 ways:

 * manually through bash/ssh
 * through a crontab with mail
 * silent through a crontab with rotation

**Make sure you fill in all your information and paths otherwise the script will not work properly!**
**Also create the needed password file!**
## Manually usage: 

### 1. Uncomment the following lines:
    # List the created filesi (optional). Uncomment to use with output:
    # echo " "
    # echo "the following files were created:"
    # echo " "
    # ls -lah $backup_dir

### 2. Give the needed rights to the script:
    chmod +x wp-backup.sh

### 3. execute the script:
    ./wp-backup.sh

## Usage through crontab:

### 1. Uncomment the following lines:
    # Send a mail if finished (optional). Uncomment to use:
    # mailto=your_adress
    # site_name=your_wordpress_Domain
    # 
    # echo "Backup of $site_name was finished.
    # The following files were created:
    # ls -lah $backup_dir" | mail -s "wp-backup of $site_name" $mailto

### 2. Give the needed rights to the script:
    chmod +x wp-backup.sh

### 3. Create the cronjob (example every day at midnight):
    00 00 * * * /path/to/wp-backup.sh

## Usage through crontab with rotation (recommended):

### 1. Uncomment the following lines:
    # Use a rotation (recommended fpr crontab usage):
    # find $backup_dir -ctime -7 -exec rm -rf wordpress.* {} \;

### 2. Give the needed rights to the script:
    chmod +x wp-backup.sh

### 3. Create the cronjob:
    00 00 * * * /path/to/wp-backup.sh

## Usage through cronjob with mail & rotation:

### 1. Uncomment the following lines:
    # Send a mail if finished (optional). Uncomment to use:
    # mailto=your_adress
    # site_name=your_wordpress_Domain
    #
    # echo "Backup of $site_name was finished.
    # The following files were created:
    # ls -lah $backup_dir" | mail -s "wp-backup of $site_name" $mailto
    # Use a rotation (recommended fpr crontab usage):
    # find $backup_dir -ctime -7 -name -exec rm -rf wordpress.* {} \;
### 2. Give the needed rights to the script:
    chmod +x wp-backup.sh

### 3. Create the cronjob:
    00 00 * * * /path/to/wp-backup.sh
