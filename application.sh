#!/bin/sh

# shellcheck disable=SC2112
function getJarPath() {
  path="/Users/user/Documents/workspaces/monitoring/spring-actuator/build/libs"
  echo $path
  jarPath=$(find $path -name '*.jar')
  revision=$(getRevision $jarPath)
  echo $revision
  echo $jarPath
}

function getRevision() {
    STR_ARRAY=(`echo $1 | tr "-" "\n"`)
    last=${STR_ARRAY[@]:(-1)}
    revision=(`echo $last | cut -d. -f1`)
    echo $revision
}


COMMAND=$1

case $COMMAND in
("revision")
getJarPath
;;
esac

exit 0

