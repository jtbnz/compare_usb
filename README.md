
# USB Watch Script (`compare_usb.sh`)

This script helps to monitor changes in USB devices connected to your system. It runs the `lsusb` command before and after a USB device is plugged or unplugged, and then shows the differences.

## Requirements

You need the `lsusb` command to be installed on your system.

### Installing `lsusb` on MacOS

You can install usbutils which includes lsusb however this sometimes only returns the device ids with no description

```bash
brew install lsusb
```

### Installing `lsusb` on Linux

Most Linux distributions come with `lsusb` pre-installed. If you don't have it, you can install it using your package manager.

#### On Debian/Ubuntu-based systems:

```bash
sudo apt update
sudo apt install usbutils
```

#### On Red Hat/CentOS/Fedora-based systems:

```bash
sudo yum install usbutils
```

#### On Arch-based systems:

```bash
sudo pacman -S usbutils
```

## Usage

1. Download or copy the `compare_usb.sh` script.
2. Make the script executable by running:

```bash
chmod +x compare_usb.sh
```

3. Run the script:

```bash
./compare_usb.sh
```

Follow the on-screen instructions to plug or unplug a USB device and press `Enter` when ready. The script will show the differences between the initial and final states of USB devices.

## Adding to PATH

To run the script from any directory, you can add it to your PATH.

### Steps:

1. Move the script to a directory that is in your system's `PATH`, or create a directory for user scripts:

```bash
mkdir -p ~/bin
mv compare_usb.sh ~/bin/
```

2. Add `~/bin` to your `PATH` if it's not already included. Edit your `~/.bashrc` or `~/.bash_profile`:

```bash
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
```

3. Reload your terminal configuration:

```bash
source ~/.bashrc
```

Now you can run `compare_usb.sh` from anywhere by typing `compare_usb.sh` in the terminal.

## License

This project is released under the GNU GENERAL PUBLIC LICENSE.

