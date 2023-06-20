#!/bin/bash

read -p "Enter the number of tests: " num_tests
read -p "Enter the question number: " question_num


for ((i=1; i<=$num_tests; i++)); do
  if [ "$i" == 1 ]; then
    echo "test$i" > suiteq$question_num.txt
    continue
  fi
  echo "test$i" >> suiteq$question_num.txt
done
