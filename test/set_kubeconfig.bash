#!/bin/bash -e

DIR=$(dirname "${BASH_SOURCE[0]}")

# shellcheck disable=SC1090
source "${DIR}/../bin/set_kubeconfig"

T_RequiresTwoArguments() {
  set +e
  "${DIR}/../bin/set_kubeconfig"
  set -e
  [ $? -eq 1 ]
}

T_ExportsBoshEnvironment() {
  local stuff
  export -d export_bosh_environment() {
stuff=$@
    
  }
}
