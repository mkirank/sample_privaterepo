#!/bin/bash -e

export RES_REPO=sample_pvt_pr_test_reports

export RES_REPO_UP=$(echo ${RES_REPO//-/} | awk '{print toupper($0)}')

set_context() {
  export VERSION=$(eval echo "$"$RES_VER_UP"_VERSIONNAME")
}

#sl
echo 'Hello scriptprivate project'     
#sleep 1m  
echo 'slept well'
#env
echo "$VERSION"

main() {
  set_context
}

main
