#!/bin/bash
check_files() {
    local search_param="$1"
    find "$(dirname "$0")" -name 'Gen*.md' | while IFS= read -r gen_file; do
        grep -i "$1" "$gen_file" | sed -n 's/\!\[\([^]]*\)\].*\!\[\([^]]*\)\].*<br\/>\(.*\)/\1\ | \2 | \3/p'
    done
	echo
}
if [ -n "$1" ]; then
    check_files "$1"
	exit
fi
while true; do
	read -p ">>> " search_param
	if [ -z "$search_param" ]; then
		exit
	fi
	check_files "$search_param"
done