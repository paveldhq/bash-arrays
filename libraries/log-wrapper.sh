#!/usr/bin/env bash

# Since logging requires at least 2 params: SEVERITY and MESSAGE
# where message is a readable text that contains ' ' spaces,
# log function sould be called like
#. `log DEBUG "My message"`
# which is not easy to use. Since a string will be splitted by IFS
# so in log wrappers we get an array of arguments.
# To pass them to `log` function we convert it back to string
# with quoted $* ("$*")
# now logging is easier to use, e.g.: `debug It works!``

function debug() {
  log DEBUG "$*"
}

function info() {
  log INFO "$*"
}

function warn() {
  log WARN "$*"
}

function error() {
  log ERROR "$*"
}
