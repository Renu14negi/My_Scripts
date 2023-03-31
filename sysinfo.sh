#!/bin/bash

echo -e "\n---------------WELCOME----------------"
echo -e  "\nHi $(whoami) ! Welcome to the DevOps Journey.\n "
echo -e "-----------******----------------------"

#show the date and time
echo -e "the current date and time is: $(date)"

#show uptime of server and the last logins!
echo -e "-----------******------------------"
echo -e "\nThe uptime of server is: $(uptime) \n Last login details:  \n$(last -a | head -3)\n"

#show the disk space and RAM utilization!
echo -e "------------******-----------------"
echo -e "Disk space available is: $(df -h |xargs | awk '{print $11"/"$9}')"
echo -e "-------------******------------------"
echo -e "\nRAM utlization: $(free | xargs | awk '{print $13"/"$8}')"

#show the top processes!
echo -e "-------------------******---------------"
echo -e "\nTop CPU processes: $(top | head -10)"


