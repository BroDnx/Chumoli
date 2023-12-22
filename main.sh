#!/bin/bash

# Telefonni USB orqali bog'lash uchun adb dasturini chaqirish
adb devices

# Telefonni bog'langanligini tekshirish
device=$(adb devices | awk 'NR==2{print $1}')

if [[ -n $device ]]; then
    echo "Telefon bog'landi: $device"
else
    echo "Telefon topilmadi. USB ulanishni tekshiring."
    exit 1
fi