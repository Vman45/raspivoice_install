#!/bin/bash
if [ "$(whoami)" != "root" ]; then

    echo "Sorry, you must be run this command as root."
    echo "For example : 'sudo install_raspivoice.sh'"
    exit 1
fi

cd $HOME/bin
TAR_FILENAME=raspivoice.tar

sudo apt-get install git

# Running on Ubuntu or Rasppberry Pi?
substring="Ubuntu"
string1= lsb_release -a | grep $substring

if test "${string1#*$substring}" != $substring
then
	echo "Running on Ubuntu"
	TAR_FILENAME=raspivoice_ubuntu.tar											
else
	echo "Running on Raspberry Pi"
fi

#  Get the binary excutable for the raspivoice application itself
wget http://www.grannymon.com/raspivoice/${TAR_FILENAME}
if  test -s $TAR_FILENAME  
then
	echo "Successully downloaded $tarfilename"
	tar xvf $TAR_FILENAME
	rm $TAR_FILENAME
else
	echo "$TAR_FILENAME not found"
fi

# Install eSpeak
apt-get install espeak

echo
file="/usr/local/raspi-wav/.git/index"
if  test -s "$file" 
then 
    cd "/usr/local/raspi-wav/"
    sudo git fetch
else 
    cd /usr/local
    pwd
    echo
	echo
	echo NOTE : The next step is download all the WAV files
	echo        This can take a long time as there are lots of them.
	echo        I suggest you go get a cup of tea and come back in half an hour
	read -p "Press any key to continue... " -n1 -s
    sudo git clone https://github.com/raspivoice/raspi-wav.git
fi




