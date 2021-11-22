#!/bin/sh
export DATE_FROM=$1
export OUTPUT_FILE=directory_changes_$(date +"%Y%m%d_%H%M%S").log

# Get the commits with changes from specified directory starting from a specific date
# Get the file changes, sort and remove duplicate entries
get_sql_changes(){
	DIRECTORY=$1
	
	echo "--------------------------------------------------" >> $OUTPUT_FILE 2>&1
	echo "Changes for $DIRECTORY . . ." >> $OUTPUT_FILE 2>&1
	echo "--------------------------------------------------" >> $OUTPUT_FILE 2>&1
	
	git log --since="$DATE_FROM" --name-only "$DIRECTORY" > TEMPFILEX
	grep "$DIRECTORY" TEMPFILEX > TEMPFILEY
	sort TEMPFILEY | uniq >> $OUTPUT_FILE 2>&1
	
	echo -e "\r\n" >> $OUTPUT_FILE 2>&1
}

# Main script
get_sql_changes directory_1/subdirectory_1
get_sql_changes directory_2

rm -f TEMPFILE*

