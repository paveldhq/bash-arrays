#!/usr/bin/env bash

declare -A MY_A_ARRAY

MY_A_ARRAY=([first]="first" [foo]=second ["bar bar"]="third element" [8]="Ooops")
echo 
echo Array values:
echo ===============================
for ARR_ITEM in "${MY_A_ARRAY[@]}"; do
  echo $ARR_ITEM
done

echo 
echo Array count
echo ===============================
echo Array has ${#MY_A_ARRAY[*]} items

echo 
echo Array indexes
echo ===============================
for ARR_INDEX in "${!MY_A_ARRAY[@]}"; do
  echo $ARR_INDEX 
done

echo 
echo Array Iterate by index
echo =================================
for ARR_INDEX in "${!MY_A_ARRAY[@]}"; do
  echo $ARR_INDEX ==\> ${MY_A_ARRAY[${ARR_INDEX}]}
done

MY_A_ARRAY[7]="new item"
unset MY_A_ARRAY[8]

echo 
echo Array Iterate by index
echo =================================
for ARR_INDEX in "${!MY_A_ARRAY[@]}"; do
  echo -e "$ARR_INDEX\t==>\t${MY_A_ARRAY[${ARR_INDEX}]}"
done