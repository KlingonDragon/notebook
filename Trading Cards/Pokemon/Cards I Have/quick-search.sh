#!/bin/bash
find "$(dirname "$0")" -name 'Gen*.md' | while IFS= read -r gen_file; do
	grep -i "$1" "$gen_file" | sed -n 's/\!\[\([^]]*\)\].*\!\[\([^]]*\)\].*<br\/>\(.*\)/\1\|\2 \3/p'
done

