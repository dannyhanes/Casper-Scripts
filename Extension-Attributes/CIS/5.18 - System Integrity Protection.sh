#!/bin/bash
# CIS Apple OS X 10.11 Benchmark V1.0.0

# 5.81 System Integrity Protection Status (Scored)
# System Integrity Protection is a new security feature introduced in OS X 10.11 El Capitan. 
# System Integrity Protection restricts access to System domain locations and restricts runtime attachment to system processes. 
# Any attempt to attempt to inspect or attach to a system process will fail. Kernel Extensions are now restricted to /Library/Extensions and are required to be signed with a Developer ID.

OSVersion=$(sw_vers -productVersion | awk -F. '{print $2}')

if [[ ${OSVersion} -gt 10 ]]; 
    then result=$(csrutil status | awk '{gsub(/.$/,"");print $5}')
else
    echo "<result>Not Supported</result>"
fi

if [ "$result" == "enabled" ] 
    then echo "<result>Compliant</result>"
else
    echo "<result>Failed</result>"
fi
