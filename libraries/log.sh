#!/usr/bin/env bash

DATE_FORMAT="%Y/%m/%d"
TIME_FORMAT="%H:%M:%S"
DATE_TIME_FORMAT="${DATE_FORMAT} ${TIME_FORMAT}"

# Logging library
function flog() {
  if [[ ! -z "${LOGFILE}"  ]]; then
    local SEVERITY=$1
    local MESSAGE=$2
    local LOGTIME=$(date +"${DATE_TIME_FORMAT}")
    local LOGSTR="[${LOGTIME}]\t${SEVERITY}\t${MESSAGE}"
    echo -e ${LOGSTR} >> ${LOGFILE}
  fi
}

function log() {
  local SEVERITY=$1
  local MESSAGE=$2
  flog "${SEVERITY}" "${MESSAGE}"
  local Color_Off='\033[0m'
  local IWhite='\033[0;97m'
  local LOGTIME=$(date +${TIME_FORMAT})
  echo -e "${LOGTIME} ${IWhite}[ ${SEVERITY} ]\t${Color_Off}${MESSAGE}"
}
