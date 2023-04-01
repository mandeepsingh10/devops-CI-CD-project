#!/bin/bash

sudo apt install openjdk-8-jdk -y
wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
tar -xvf latest-unix.tar.gz
sudo /nexus-3.50.0-01/bin/nexus start
