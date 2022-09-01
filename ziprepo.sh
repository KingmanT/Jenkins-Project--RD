#!/bin/bash

#This script is to clone the deployment repository and zip it for the elastic beanstalk

#The Url of the GitHub repository
GitGubUrl="https://github.com/kura-labs-org/kuralabs_deployment_1.git"

#The name of the repository folder
RepoFolderName="kuralabs_deployment_1"

#The Name of the Zip file we create
ZipFileName="kuralabs_deployment_1"

#Command to clone the GitHub repository
GitCloneCMD="git clone $GitGubUrl"

#Command to zip the cloned repository
ZipCMD="zip -q $ZipFileName -r $RepoFolderName/* .[^.]*"

#Check if the zip command is installed
which zip > /dev/null 2>&1

#If it's not installed exit
if [ $? -ne 0 ]; then
    echo "Zip command is not installed"
    exit 1
fi

#Clone the repository and zip it
$GitCloneCMD && $ZipCMD

#Check if the commands worked
if [ $? -ne 0 ]; then
    echo "Clone and Zip Error"
    exit 1
fi

#successful
echo "Zip successful"
exit 0
