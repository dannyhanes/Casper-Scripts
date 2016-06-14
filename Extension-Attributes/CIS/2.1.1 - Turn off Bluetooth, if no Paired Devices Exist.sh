#!/bin/bash

# CIS Apple OS X 10.11 Benchmark V1.0.0
# 2.1.1 Turn off Bluetooth, if no Paired Devices Exist (Scored)

# Bluetooth devices use a wireless communications system that replaces the cables used by other peripherals to connect to a system. 
# It is by design a peer-to-peer network technology and typically lacks centralized administration and security enforcement infrastructure.

DevicesPaired="$(system_profiler | grep -c "Paired: Yes")"
BluetoothStatus="$(/usr/bin/defaults read /Library/Preferences/com.apple.Bluetooth.plist ControllerPowerState)"


if [ -z "$BluetoothStatus" ]; 
        then echo "<result>---</result>"
elif [ "$BluetoothStatus" == 0 ] 
        then echo "<result>Compliant</result>"
elif [ "$BluetoothStatus" == 1 ] && [ "$DevicesPaired" -gt 0 ]
        then echo "<result>Compliant</result>"        
elif [ "$BluetoothStatus" == 1 ] && [ "$DevicesPaired" -eq 0 ]
        then echo "<result>Failed</result>"
fi
