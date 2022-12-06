#!/bin/bash

sudo yum update –y
sudo su -
cd /opt
echo "Add the Jenkins repo using the following command:"

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

echo "Import a key file from Jenkins-CI to enable installation from the package:"

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

sudo yum upgrade
echo "Installing java...........:"

sudo amazon-linux-extras install java-openjdk11 -y

echo "Installing Jenkins....:"

sudo yum install jenkins -y

echo "Enable the Jenkins service to start at boot"

sudo systemctl enable jenkins

echo "Starting Jenkins as a service:"

sudo systemctl start jenkins
echo "You can check the status"

sudo systemctl status jenkins

sudo yum install git -y

/root/maven_install.sh

source /etc/profile.d/maven.sh
