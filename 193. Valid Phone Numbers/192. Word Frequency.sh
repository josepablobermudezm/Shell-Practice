# Read from the file words.txt and output the word frequency list to stdout.

cat words.txt | tr -s ' ' '\n' | sort | uniq -c | sort -r | awk '{ print $2, $1 }'

#cat words.txt
#Outputs the content in the file in the standard output

#➜  ~ cat words.txt
#the day is sunny the the
#the sunny is is
#tr -s ' ' '\n'
#tr -s uses for truncating the input as per given command followed by it. In our case, we are interested in truncating each whitespace( ' ') and replace it with newline('\n') as shown below:

#➜  ~ cat words.txt | tr -s ' ' '\n'
#the
#day
#is
#sunny
#the
#the
#the
#sunny
#is
#is
#sort
#This sort the input in ascending order so that uniq can find duplicate words adjacently (order does not matter for uniq) as shown below:

#➜  ~ cat words.txt | tr -s ' ' '\n' | sort
#day
#is
#is
#is
#sunny
#sunny
#the
#the
#the
#the
#uniq --count
#This command provides word frequency as "count word" format.
#Filter adjacent matching lines from INPUT (or standard input),
#writing to OUTPUT (or standard output).
#Note: 'uniq' does not detect repeated lines unless they are adjacent.

#➜  ~ cat words.txt | tr -s ' ' '\n' | sort | uniq --count
#      1 day
#      3 is
#      2 sunny
#      4 the
#sort -r
#sort -r sorts the input in descending order.

#➜  ~ cat words.txt | tr -s ' ' '\n' | sort | uniq --count | sort -r
#      4 the
#      3 is
#      2 sunny
#      1 day
#awk '{print $2 " " $1}
#awk formats the input given for each line. In our example, we want the second column ($2) appears first and the first column ($1) appears second separated by whitespace(" ")

#➜  ~ cat words.txt | tr -s ' ' '\n' | sort | uniq --count | sort -r | awk '{print $2 " " $1}'
#the 4
#is 3
#sunny 2
#day 1
