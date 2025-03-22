#!/bin/bash




echo "files sorted by size (asc):"
ls -lhS | awk '{print $5,$9}' 
# l - long format. h - human read . S -sort by size. r- revers the order. 

echo "files sorted by size (dec):"
ls -lhSr | awk '{print $5,$9}'

echo "======================task1 complte ================="
 # ----------------------task 2


echo " "
echo " sort file:"


#ls -l | sort -t. -k2 | awk '{print $5,$9}' 


#now i will make list.   

all_list=$(ls -l | sort -t. -k2 | awk '{print $5,$9}')

#list include for now only 3 type of file , only for perpuse to find if the scrip is ruuning good. after it we can modify it to all files.

txt_list=$(echo "$all_list" | grep '\.txt$') 

sh_list=$(echo "$all_list" | grep '\.sh$')

jpg_list=$(echo "$all_list" | grep '\.jpg$')


#now i will make list of the sum of any list


txt_sum=$(echo "$txt_list" | awk '{sum+=$1} END {print sum}')

sh_sum=$(echo "$sh_list" | awk '{sum+=$1} END {print sum}')

jpg_sum=$(echo "$jpg_list" | awk '{sum+=$1} END {print sum}')


#check ecrything work ok.
echo "txt list is $txt_list"
echo "txt sum is $txt_sum"
echo " "
echo "sh list is $sh_list"
echo "sh sum is $sh_sum"
echo " "
echo "jpg list is $jpg_list"
echo "jpg sum is $jpg_sum"

echo "======================task2 complte =================="


total_size=$(du -sb . | awk '{print $1/1024/1024 }')

echo "total is $total_size MB"

#i define the size limit, can be change for other size and also for a user var.

size_limit=100  

if (( $(echo "$total_size > $size_limit" | bc -l) )); then
#bc -l allow to calculate decimal number

      echo "the folder size is bigger then $size_limit MB"

#last task- asking to compress files.if the are bigger.

echo "what would you like to do?"
echo "1.compress file"
echo "2.delete some file?"
read -p "entre your choise (1/2): " user_choose 

if [[ "$user_choose" == "1" ]]; then
     #entre compress order here to file name
     echo "file have been compress into backup"

  elif [[ "$user_choose" == "2" ]]; then
     #entre a delete order to delete some kind of files
     echo "the file you ask have been delete"

  else
    echo "invalid choice. no action taken."

   fi

else
          echo "the folder size is in the limit"
fi



















