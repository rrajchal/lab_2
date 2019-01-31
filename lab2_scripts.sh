#!/bin/bash
# Authors : Rajesh Rajchal & Jack Beeken
# Date: 1/30/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Enter a file name: "
read fileName
echo "What do you want to search in the file"
read word
grep $word $fileName

# 1. counting number of phone numbers
# [0-9]  any digits
# {n} repeate n number of times
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' regex_practice.txt


# 2. counting the number of emails
# * The preceding item will match zero or more times
# + The preceding item will match zero or more times
# :alnum: any digits or alphabets
# \ escape character
grep -c '[[:alnum:]+\.\_\-]*@[[:alnum:]+\.\_\-]*' regex_practice.txt


# 3. list all of the numbers in the "303" and storing in a file
grep '303\-[0-9]\{3\}\-[0-9]\{4\}' regex_practice.txt > phone_result.txt

#4. List all of the emails from geocities.com and store in a file
grep '[[:alnum:]+\.\_\-]*@geocities.com' regex_practice.txt > email_results.txt

#5. Lising all of the lines that match a command-line regular expression
grep $1 regex_practice.txt > command_results.txt



