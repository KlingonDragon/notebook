#!/bin/bash
check_files() {
	for gen_file in "$(dirname "$0")"/Gen*.md; do
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