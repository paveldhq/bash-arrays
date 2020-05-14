#!/usr/bin/env bash

#
# bash (arrays)
# - arguments ($)
# - IFS
# - Indexed array (default)
# - Associative array

function getSelfDir() {
  local SELF_DIR=$(dirname $0)
  if [[ "." == $SELF_DIR ]]; then
    SELF_DIR=$(pwd)
  fi
  echo $SELF_DIR
}

SELF_DIR=$(getSelfDir)
LIBS="${SELF_DIR}/libraries/*.sh"
LOGFILE="${SELF_DIR}/logs/my.log"
for LIBFILE in ${LIBS}; do
 . ${LIBFILE}
 echo Loaded ${LIBFILE}
done


debug Here we go!

run ex1_arguments "long param" par2 par3 par4

run ex2_ifs a b c d e f

run ex3_indexed_array

run ex4_associative_array