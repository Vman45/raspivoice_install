### raspivoice_install (for Ubuntu or Raspberry Pi)

##### Make sure GIT is installed by doing this:
> sudo apt-get install git

#####Then clone this repository using this command:
> git clone https://github.com/raspivoice/raspivoice_install.git

##### The actual install script for Raspivoice is called install_raspivoice.sh. But before you can run it, you have must make it executable using the following command:

> cd raspivoice_install

> chmod 755 install_raspivoice.sh

##### Then run it as root using the following commands:
> ./install_raspivoice.sh

##### Install eSpeak
> sudo apt-get install espeak

##### Install the WAV files used by Raspivoice (This can take about half an hour)

> cd /usr/local

> sudo git clone https://github.com/raspivoice/raspi-wav.git

##### And if you have already dowloaded the WAV files and only want to update, just do this:

> cd /usr/local/raspi-wav/

> sudo git fetch

##### Last thing to do would be ensure the sound is directed to the right channel
> The command to do this 
> amixer cset numid=3 n
> Where <n> is the required interface : 0=auto, 1=analog, 2=hdmi. To force the Raspberry Pi to use the analog output :
> So the actual command to use if you are using the earphone jack:
>> amixer cset numid=3 1


##### If all goes well, the Raspivoice will now be install and ready for use.  The raspivoice binaries itself will reside in the $HOME/bin folder

To try it, make sure audio is enabled for audio jack output (on Rpi) or USB Analog audio (on Ubuntu) and type:

> raspivoice hello world
> raspivoice thatsall





