#!/bin/bash

# CIS Apple OS X 10.11 Benchmark V1.0.0
# 1.2 Enable Auto Update (Scored)

# Auto Update verifies that your system has the newest security patches and software updates. 
# If "Automatically check for updates" is not selected background updates for new malware definition files from Apple for XProtect and Gatekeeper will not occur.

result="$(/usr/bin/defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticCheckEnabled)"

if [ -z "$result" ]; 
        then echo "<result>---</result>"
elif [ "$result" == 1 ] 
        then echo "<result>Compliant</result>"
else 
        echo "<result>Failed</result>"
fi
