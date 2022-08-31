#!/bin/bash

#This script is to run the Install Jenkins script

#Run as admin only check
if [ $UID != 0 ]; then
    echo "Run again with admin permissions"
    exit 1
fi

echo "Installing Jenkins"

#Command to run the install script and log everything
/bin/bash installjenkins.sh &> installjenkins.log

#Check if the install had a error
if [ $? -ne 0 ]; then
    echo "Installation error"
    exit 1
else
    echo "Installation successful"
    echo "Installation Logs in 'installjenkins.log'"
fi

#Wait 5 seconds then check status
sleep 5

#Check the status of the service
systemctl status jenkins --no-pager

#Print out secret password to login and setup Jenkins
echo "Password to Unlock and Setup Jenkins Below"
cat /var/lib/jenkins/secrets/initialAdminPassword

#successful
echo "Run successful"
exit 0
