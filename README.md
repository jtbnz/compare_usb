# USB Device Change Detector

This script runs `lsusb` to display the connected USB devices, waits for the user to plug or unplug a device, then reruns `lsusb` and outputs the differences between the two `lsusb` runs.

## Prerequisites

You need the `lsusb` command to be installed on your system.

### Installing `lsusb` on Linux

Most Linux distributions come with `lsusb` pre-installed. If you don't have it, you can install it using your package manager.

#### On Debian/Ubuntu-based systems:

```bash
sudo apt update
sudo apt install usbutils
