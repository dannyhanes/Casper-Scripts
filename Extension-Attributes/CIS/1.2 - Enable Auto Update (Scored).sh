#!/bin/sh

RESULT=defaults read /Library/Preferences/com.apple.SoftwareUpdate

echo "<result>$RESULT</result>"
