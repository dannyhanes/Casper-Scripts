#!/bin/sh

#Ensure that application updates are installed after they are available from Apple. 
#These updates do not require reboots or admin privileges for end users.

RESULT=defaults read /Library/Preferences/com.apple.commerce AutoUpdate

echo "<result>$RESULT</result>"
