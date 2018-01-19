#!/bin/bash

set -eu

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
export fly_target=${fly_target:-carts_svc}
echo "Concourse API target ${fly_target}"
echo "SVC $(basename $DIR)"

pushd $DIR
  fly -t ${fly_target} set-pipeline -p carts_svc -c carts-release.yml -n 
  fly -t ${fly_target} unpause-pipeline -p carts_svc
  fly -t ${fly_target} trigger-job -w -j carts_svc/job-test
popd
