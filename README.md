# Install Daemon COIN & Addport & Stratum (update 2022-09-30) v0.5
***********************************************
<a href="https://discord.gg/xfSwnN7J"><img src="https://img.shields.io/discord/904564600354254898.svg?style=flat&label=Discord %3C3%20&color=7289DA%22" alt="Join Community Badge"/></a>

###

## Install script for Daemon Coin & addport & stratum on Ubuntu Server 16.04 / 18.04

Use this script on fresh install ubuntu Server 16.04 / 18.04. ``` No other version is currently supported. ``` There are a few things you need to do after the main install is finished.

## First upgrade the system and make sure is not root user.

Update and upgrade your system.
```
sudo apt update && sudo apt upgrade -y
```
###

### :warning: READ THIS 

You <b>MUST RUN</b> the DmcAddpStrm installer under <b>root</b> or an existing <b>account</b>. If you have an existing account then make sure that the <b>account</b> have <b>sudo permissions.</b></b>

To start the installation paste the following in your terminal and follow the instructions. Yiimpool installer will ask you to create a new account.

```
curl https://raw.githubusercontent.com/vaudois/install_DmcAddpStrm/master/bootstrap.sh | bash
```

- > It will take some time for the installation to be finnished and it will do for you.

***********************************

## This script has an interactive beginning and will ask for the following information :

- Path to stratum file (You can enter )(Example)): /var/stratum)
- For stratum in future release....

***********************************

Finish! Remember to 
```
how to use 

$ daemonbuilder
$ addport
$ *stratumbuilder

*this scrypt ahre integrated in  furure release

READ THIS!
daemonbuilder to build a new coin in Yiimp & addport if to use from open dedicated port and create coin to algo Ex: vkax.gr.conf
and run stratum with coin and create to log stratum with screen Ex: screen -r vkax

*****************************************************************************

## 🎁 Support

Donations for continued support of this script are welcomed at:

