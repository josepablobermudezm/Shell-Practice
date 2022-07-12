# Read from the file file.txt and output all valid phone numbers to stdout.

# ^ is used to denote the beginning of a line
# $ is used to denote the end of a line
# \ to escape next one trailing character;
#  -e and separate the two patterns into two regexes, the first one matches this case: xxx-xxx-xxxx and the second one matches this case: (xxx) xxx-xxxx

#grep -e '\(^[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}$\)' -e '\(^([0-9]\{3\})[ ]\{1\}[0-9]\{3\}-\([0-9]\{4\}\)$\)'  file.txt

# other solution 
# grep '^\([0-9]\{3\}-\|([0-9]\{3\}) \)[0-9]\{3\}-[0-9]\{4\}$' file.txt

grep '^\([0-9]\{3\}-\|([0-9]\{3\}) \)[0-9]\{3\}-[0-9]\{4\}$' file.txt
