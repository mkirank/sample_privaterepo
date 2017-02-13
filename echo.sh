#!/bin/bash -e

export CURR_MY_JOB=runShtest1
echo $CURR_MY_JOB
export CURR_MY_JOB_UP=$(echo ${CURR_MY_JOB//-/} | awk '{print toupper($0)}')
echo $CURR_MY_JOB_UP
set_context() {
  export CURR_MY_JOB_VERSION=$(eval echo "$"$curr_my_job"_VERSIONNUMBER")
  
  echo $CURR_MY_JOB_VERSION
}

#sl
echo 'Hello scriptprivate project'     
#sleep 1m  

#env


main() {
  set_context
}

main
