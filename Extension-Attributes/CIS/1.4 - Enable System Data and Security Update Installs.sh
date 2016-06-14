#!/bin/bash

# CIS Apple OS X 10.11 Benchmark V1.0.0
# 1.4 Enable App Update Installs (Scored)

# Ensure that system and security updates are installed after they are available from Apple. 
# This setting enables definition updates for XProtect and Gatekeeper, with this setting in place new malware and adware that Apple has added to the list of malware or untrusted software will not execute. 
# These updates do not require reboots or end user admin rights.

result1="$(/usr/bin/defaults read /Library/Preferences/com.apple.SoftwareUpdate ConfigDataInstall)"
result2="$(/usr/bin/defaults read /Library/Preferences/com.apple.SoftwareUpdate CriticalUpdateInstall)"

if [ -z "$result1" ] || [ -z "$result2" ] 
        then echo "<result>---</result>"
elif [ "$result1" == 1 ] && [ "$result2" == 1 ]
        then echo "<result>Compliant</result>"
else 
        echo "<result>Failed</result>"
fi
