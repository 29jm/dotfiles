#!/bin/bash

if [[ $1 == "" ]]; then
	echo "Usage: $0 PRODUCT"
	exit 1;
fi

USB_DEV=$(dmesg | grep -o "usb .*: Product: $1" | tail -n 1 | awk '{print $2}' | sed 's/://')

if [[ $USB_DEV == "" ]]; then
	echo "Device not found";
	exit 1;
fi

echo "Power cycling usb device $USB_DEV"

echo "$USB_DEV" > /sys/bus/usb/drivers/usb/unbind
echo "$USB_DEV" > /sys/bus/usb/drivers/usb/bind
