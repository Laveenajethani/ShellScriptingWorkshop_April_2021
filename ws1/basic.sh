#!/usr/bin/bash

users=$(cat db.csv)
for j in $users
do
  if id $j &> /dev/null
  then 
    echo "user $j already exist"
  else
   if useradd $j
   then
     echo "hello $j user created"
   fi
  fi
done
