#!/usr/bin/env bash

#########################################################
# Updated by Vaudois
# This scrypt run to install Daemon Coin & Addport & Straum
#########################################################
if [ -z "${TAG}" ]; then
	TAG=v0.2
fi

DIRINSTALL=daemoncoin-addport-stratum

# Clone the repository if it doesn't exist.
if [ ! -d $HOME/daemoncoin-addport-stratum ]; then
	if [ ! -f /usr/bin/git ]; then
		echo Installing git . . .
		apt-get -q -q update
		DEBIAN_FRONTEND=noninteractive apt-get -q -q install -y git < /dev/null
		echo DONE...
		echo
	fi
	
	echo Downloading  Installer daemoncoin-addport-stratum ${TAG}. . .
	sleep 3
	git clone \
		-b ${TAG} --depth 1 \
		https://github.com/vaudois/daemoncoin-addport-stratum \
		"$HOME"/daemoncoin-addport-stratum \
		< /dev/null 2> /dev/null
	echo
fi

# Set permission and change directory to it.
cd $HOME/daemoncoin-addport-stratum

# Update it.
sudo chown -R $USER $HOME/daemoncoin-addport-stratum/
if [ "${TAG}" != `git describe --tags` ]; then
	echo Updating daemoncoin-addport-stratum ${TAG} . . .
	git fetch --depth 1 --force --prune origin tag ${TAG}
	if ! git checkout -q ${TAG}; then
		echo "Update failed. Did you modify something in `pwd`?"
		exit
	fi
	echo
fi

# Start setup script.
bash $HOME/daemoncoin-addport-stratum/install.sh
