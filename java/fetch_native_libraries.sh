#!/bin/bash
echo  "*****11 ****"

set -ev
ROOT=$(git rev-parse --show-toplevel)
TAG=$(git describe --exact-match --tags || echo snapshot)
if [ $TRAVIS ]; then
  DIR=$HOME/cache
  mkdir -p $DIR
else
  DIR=/tmp
fi

echo  "*****22 ****"


echo $ROOT $TAG $DIR
#/home/wang/code/openrasp/openrasp-v8 v21 /tmp

echo  "*****33 ****"
echo https://github.com/baidu-security/openrasp-v8/releases/download/$TAG/java_natives.tar.gz
# https://github.com/baidu-security/openrasp-v8/releases/download/v21/java_natives.tar.gz

#curl -R -# -k -L -o $DIR/java_natives_$TAG.tar.gz.download -z $DIR/java_natives_$TAG.tar.gz https://github.com/baidu-security/openrasp-v8/releases/download/$TAG/java_natives.tar.gz

echo  "*****44 ****"


#[[ -f $DIR/java_natives_$TAG.tar.gz.download ]] && cp -p $DIR/java_natives_$TAG.tar.gz.download $DIR/java_natives_$TAG.tar.gz && rm $DIR/java_natives_$TAG.tar.gz.download
#tar zxf $DIR/java_natives_$TAG.tar.gz -C $ROOT/java/src/main/resources
tar zxf java_natives.tar.gz -C $ROOT/java/src/main/resources
