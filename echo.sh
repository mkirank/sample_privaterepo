#!/bin/bash -e

export RESO_JOB=runShtest1

export RESO_JOB_UP=$(echo ${RESO_JOB//-/} | awk '{print toupper($0)}')

set_context() {
  export VERSION=$(eval echo "$"$RESO_JOB_UP"_VERSIONNAME")
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
