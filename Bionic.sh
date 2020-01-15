clear
echo 'Welcome the the Automated Wine Installer for Ubuntu Bionic by Cain Atkinson'
echo 'Enabling 32-bit packages if your PC is 64-bit and it isnt already enabled'
dpkg --add-architecture i386
echo 'Done'
echo 'Installing software-properties-common'
apt -q -y install software-properties-common
echo 'Done'
echo 'Downloading Wine Repository key'
wget -silent -nc https://dl.winehq.org/wine-builds/winehq.key
echo 'Done'
echo 'Adding Wine Repository key'
apt-key add winehq.key
echo 'Done'
echo 'Installing the correct repository for your Ubuntu version'
apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
echo 'Done'
echo 'Installing Wine Stable'
apt install -q -y --install-recommends winehq-stable
echo 'Done'
echo 'Cleaning leftover files'
rm winehq.key
echo 'Done'
clear
bash "end.sh"
exit