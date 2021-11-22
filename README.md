# git-commits-checker
A simple utility shell script to check changes from a specified directoring using 'git log' command.

### Modifications
In the main part of the script, you can indicate the directories to check for commits:

```
# Main script
get_sql_changes directory_1/subdirectory_1
get_sql_changes directory_2
```

### Usage
1. Place this script on the root folder of your project (same directory with .gitignore)
2. Open git-bash or CLI on your root folder
3. Run the script using the ff. command and specify the start date to check (similar to 'since' option in 'git log'):

```
$ ./git-commits-checker.sh 2020-05-05
```
