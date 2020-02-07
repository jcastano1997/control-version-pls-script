# Welcome to control version for PLs!

This script works to keep track of versions in your PLs of a database schema backup.

## Steps to run the script

### First - Requirements
* Is necessary to have installed Python 3.x.
* You need the scheme backup in text plain and encoded in UTF-8.

### Second - Run script
* For run the script, clone the repository `git clone https://github.com/jcastano1997/control-version-pls-script.git`.
* `cd` to the folder and **copy** your schema backup with the file name `backup.sql`.
* Run in the console `python reload_pls.py`.
* And voila, your files are created or updated.

## Structure folders and files

The script create several folders that belong to each database schema and into to the folder have the PL's that belong to the scheme.

## Recommendations

When you clone the script, delete all folders into the project and delete the `backup.sql` file, this files is only to example, you only need the script named `reload_pls.py`.
With the git repository, you can keep track of versions and observe the changes that have been made in your PL's.

****
I hope it serves you and happy code.