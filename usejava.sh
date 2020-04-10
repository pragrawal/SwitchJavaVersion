#!/bin/bash
export JAVA_HOME=`/usr/libexec/java_home -v $1`
echo "Here is the output of java -version:"
java -version
