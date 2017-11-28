#!/bin/bash
apt-get update;
apt-get install default-jre default-jdk -y;

echo "JAVA_HOME=/usr/lib/jvm/default-java" >> /etc/environment
