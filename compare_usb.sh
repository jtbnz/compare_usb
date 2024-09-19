#!/bin/bash
echo "Running lsusb:"
# Run lsusb and save the output
initial_lsusb=$(lsusb)


echo "Please plug or unplug a USB device and press Enter to continue..."
read -r # Wait for the user to press Enter

# Run lsusb again
final_lsusb=$(lsusb)

# Compare the two outputs and show the differences
echo "Differences between initial and final lsusb:"
diff <(echo "$initial_lsusb") <(echo "$final_lsusb")
