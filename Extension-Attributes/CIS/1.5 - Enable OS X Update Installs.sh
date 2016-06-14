#!/bin/bash

# CIS Apple OS X 10.11 Benchmark V1.0.0
# 1.5 Enable OS X Update Installs (Scored)

# Ensure that OS X updates are installed after they are available from Apple. This setting enables OS X updates to be automatically installed. 
# Some environments will want to approve and test updates before they are delivered and where updates can cause disruption to operations that is best practice. 
# Automatic updates should be turned off where changes are tightly controlled and there are mature testing and approval processes. 
# Automatic updates should not be turned off so the admin can call the users first to let them know it's ok to install. 
# A dependable repeatable process involving a patch agent or remote management tool should be in place before auto-updates are turned off.

result="$(/usr/bin/defaults read /Library/Preferences/com.apple.commerce AutoUpdateRestartRequired)"

if [ -z "$result" ]; 
        then echo "<result>---</result>"
elif [ "$result" == 1 ] 
        then echo "<result>Compliant</result>"
else 
        echo "<result>Failed</result>"
fi
