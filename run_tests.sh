#!/bin/bash

apt-get-update
apt-get install maven

mvn install:install-file -Dfile=lib/XtreemFS.jar -DgroupId=org.xtreemfs -DartifactId=xtreemfs -Dversion=1.4-4.1 -Dpackaging=jar
mvn install:install-file -Dfile=lib/Foundation.jar -DgroupId=org.xtreemfs.foundation -DartifactId=xtreemfs-foundation -Dversion=1.4-4.1 -Dpackaging=jar
mvn install:install-file -Dfile=lib/Flease.jar -DgroupId=org.xtreemfs -DartifactId=xtreemfs-flease -Dversion=1.4-4.1 -Dpackaging=jar
mvn install:install-file -Dfile=lib/jsonrpc2-base-1.27.jar -DgroupId=com.thetransactioncompany -DartifactId=jsonrpc-base -Dversion=1.27 -Dpackaging=jar
mvn install:install-file -Dfile=lib/jsonrpc2-server-1.7.jar -DgroupId=com.thetransactioncompany.server -DartifactId=jsonrpc-server -Dversion=1.7 -Dpackaging=jar
mvn install:install-file -Dfile=lib/jsonrpc2-client-1.8.jar -DgroupId=com.thetransactioncompany.client -DartifactId=jsonrpc-client -Dversion=1.8 -Dpackaging=jar

mvn test
