#!/bin/bash -e

#sl
echo '--->Hello scriptprivate project' 

#sleep 1m  
echo ' ---> one'
export IMG_RES="image"
export REPO_RES="run2"

export IMG_RES_UP=$(echo $IMG_RES | awk '{print toupper($0)}')
export REPO_RES_UP=$(echo $REPO_RES | awk '{print toupper($0)}')

export IMG_VERSION=$(eval echo "$"$IMG_RES_UP"_VERSIONNUMBER")
export IMG_VERSION_AS_REPOSVER=$(eval echo "$"$REPO_RES_UP"_VERSIONNUMBER")

echo img_verion=$IMG_VERSION
echo img_version_as_repo=$IMG_VERSION_AS_REPOSVER

echo "versionName=$IMG_VERSION_AS_REPOSVER" > /build/state/$IMG_RES.env #adding version state
echo "anotherProperty=$IMG_VERSION" >> /build/state/$IMG_RES.env
