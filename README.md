# raspivoice_install (for Ubuntu or Raspberry Pi)

Make sure GIT is installed by doing this:
sudo apt-get install git

Then clone this repository using this command:
git clone https://github.com/raspivoice/raspivoice_install.git

The actuall install script for Raspivoice is called install_raspivoice.sh. But before you can run it, you have must make it executable using the following command:
chmod 755 install_raspivoice.sh

Then run it as root using the following command:
sudo ./install_raspivoice.sh

If all goes well, the raspivoice will be install and ready for use.
The raspivoice binaries itself will reside in the $HOME/bin folder



