#!/bin/bash
echo "Running USB Scan please wait..."
# Initial lsusb output
echo ""
initial=$(lsusb)

echo "Please plug or unplug a USB device..."

# Wait for a user to press enter to continue
read -p "Press Enter after plugging/unplugging a USB device..."
echo ""
# Capture lsusb output again
final=$(lsusb)

# Compare devices: Removed and Added
removed_devices=$(comm -23 <(echo "$initial" | sort) <(echo "$final" | sort))
added_devices=$(comm -13 <(echo "$initial" | sort) <(echo "$final" | sort))
echo ""
# Show removed devices
if [ -n "$removed_devices" ]; then
  echo -e "\033[31mRemoved devices:\033[0m"
  echo "$removed_devices"
else
  echo -e "\033[31mNo devices were removed.\033[0m"
fi
echo ""
# Show added devices
if [ -n "$added_devices" ]; then
  echo -e "\033[32mAdded devices:\033[0m"
  echo "$added_devices"
else
  echo -e "\033[32mNo devices were added.\033[0m"
fi
