#!/usr/bin/env bash
set -e

scriptDir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
rootDir=$scriptDir/..

tool=$1

cmd="docker run --rm -it --volume=${rootDir}:/module -p 80:4000 bitcraze/web-builder ./tools/build/${tool}"
echo "$cmd"
$cmd
