#!/bin/bash

LOGFILE="/opt/devops-project/scripts/install_log_AnsarTalgarov.txt"

echo "=== DevOps setup started ===" | tee $LOGFILE

echo "Updating system..." | tee -a $LOGFILE
sudo apt update && sudo apt upgrade -y

echo "Installing Java 17, Gradle, Git..." | tee -a $LOGFILE
sudo apt install -y openjdk-17-jdk gradle git

echo "=== Installed versions ===" | tee -a $LOGFILE

echo "Java version:" | tee -a $LOGFILE
java -version 2>&1 | tee -a $LOGFILE

echo "Gradle version:" | tee -a $LOGFILE
gradle -v | tee -a $LOGFILE

echo "Git version:" | tee -a $LOGFILE
git --version | tee -a $LOGFILE

echo "=== Setup completed successfully ===" | tee -a $LOGFILE
