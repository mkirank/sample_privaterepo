#!/bin/bash -e

export CURR_MY_JOB=runShtest1

export CURR_MY_JOB_UP=$(echo ${CURR_MY_JOB//-/} | awk '{print toupper($0)}')

set_context() {
  export CURR_MY_JOB_VERSION=$(eval echo "$"$curr_my_job"_VERSIONNUMBER")
  
  echo $CURR_MY_JOB_VERSION
}

#sl
echo 'Hello scriptprivate project'     
#sleep 1m  
echo 'slept well'
#env


main() {
  set_context
}

main
