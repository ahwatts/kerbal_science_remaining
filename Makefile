all: 
	cd science && ruby all_science.rb | sort -n  > all_science.csv

parse_sfs:
	cd js && pegjs -e window.parse_sfs parse_sfs.pegjs parse_sfs.js
