#!/usr/bin/env bash

function getExampleScriptName() {
  local EX_NAME=$1
  echo "${SELF_DIR}/examples/${EX_NAME}/example.sh"
}

function run() {
  local EX_NAME=$1
  local EX_SCRIPT=$(getExampleScriptName ${EX_NAME})
  if [[ -f "${EX_SCRIPT}" ]]; then
    chmod +x "${EX_SCRIPT}"
    shift
    ${EX_SCRIPT} "$@"
  fi
}
