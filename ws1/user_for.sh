#!/usr/bin/bash

users=$(cat db.csv)
for j in $users
do
  useradd $j
  echo "hello $j"
done
