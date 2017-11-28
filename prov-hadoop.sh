#!/bin/bash
apt-get update;
apt-get install rsync -y;

wget http://www-us.apache.org/dist/hadoop/common/stable/hadoop-2.9.0.tar.gz
tar -xzf hadoop-2.9.0.tar.gz;
# export JAVA_HOME=/usr/lib/jvm/default-java