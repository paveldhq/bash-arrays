#!/usr/bin/env bash

MY_ARRAY=("first" second "third element" [8]="Ooops")
echo 
echo Array values:
echo ===============================
for ARR_ITEM in "${MY_ARRAY[@]}"; do
  echo $ARR_ITEM
done

echo 
echo Array count
echo ===============================
echo Array has ${#MY_ARRAY[*]} items

echo 
echo Array indexes
echo ===============================
for ARR_INDEX in "${!MY_ARRAY[@]}"; do
  echo $ARR_INDEX 
done

echo 
echo Array Iterate by index with length counting
echo =================================
for ARR_INDEX in "${!MY_ARRAY[@]}"; do
  echo -e "$ARR_INDEX [${#MY_ARRAY[${ARR_INDEX}]}] ==> ${MY_ARRAY[${ARR_INDEX}]}"
done

MY_ARRAY[7]="new item"
unset MY_ARRAY[8]
MY_ARRAY[*]="just in the end"

echo 
echo Array Iterate by index
echo =================================
for ARR_INDEX in "${!MY_ARRAY[@]}"; do
  echo $ARR_INDEX ==\> ${MY_ARRAY[${ARR_INDEX}]}
done