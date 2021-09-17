#!/usr/bin/bash
adb wait-for-device root
adb wait-for-device remount 
adb wait-for-device shell mkdir -p system/product/etc/res/images/charger/
adb wait-for-device shell mkdir -p system/product/etc/res/values/charger/
adb wait-for-device push images/$1/*.png system/product/etc/res/images/charger/
adb wait-for-device push anim/animation.txt system/product/etc/res/values/charger/animation.txt
adb wait-for-device shell reboot -p
