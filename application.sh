#!/bin/sh

function getJarPath() {
  path="/Users/user/Documents/workspaces/monitoring/spring-actuator/build/libs"
  echo $path
  jarPath=$(find $path -name '*.jar')
  echo $jarPath
}

COMMAND=$1

case $COMMAND in
("revision")
getJarPath
;;
esac

exit 0

