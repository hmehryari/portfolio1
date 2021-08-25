#!/bin/bash
#web scraping qoutes website

if [ $# -ne 1 ]; then 
    echo "Usage $(basename $0) 'vulnerabilities'"
    exit -1

fi

curl=$(which curl)
outfile="output.txt"
name=$(echo $1 | tr ' ' '+')
regex="--$1 "
url="https://thehackernews.com/2021/08/top-15-vulnerabilities-attackers.html"


#dump webpage
function dump_webpage() {
    curl -o output.txt "https://thehackernews.com/2021/08/top-15-vulnerabilities-attackers.html" 
# check_errors
}

#clean the webpage
function string_html() {
    grep "<p>" $outfile | sed 's/<[^>]*//g' > temp.txt && cp temp.txt $outfile
}

#loop through content of file
function print_quotes() {
    echo "All quotes!"
    while read quote; do
        echo "${quote}"
        done < $outfile
}

dump_webpage
string_html
print_quotes