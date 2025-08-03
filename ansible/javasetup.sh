#!/bin/bash
cd /opt
sudo  wget https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz
sudo tar -xzf openjdk-11.0.2_linux-x64_bin.tar.gz
sudo mv jdk-11.0.2 java-11
sudo ln -s /opt/java-11/bin/java /usr/bin/java
echo 'export JAVA_HOME=/opt/java-11' | sudo tee -a /etc/profile
echo 'export PATH=$PATH:$JAVA_HOME/bin' | sudo tee -a /etc/profile
source /etc/profile
java -version
