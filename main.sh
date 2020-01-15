if (( $EUID != 0 )); then
  echo "Please run as root"
  exit
fi
echo 'Welcome to the Ubuntu Wine Auto Installer by Cain Atkinson,'
echo 'Please select your Ubuntu Version.'
read -p "x=Xenial LTS and Linux Mint 18, b=Bionic, d=Disco, e=Eoan: " version
if [ $version == "x" ];
then
  bash "scripts/Xenial.sh"
fi
if [ $version == "b" ]
then
  bash "scripts/Bionic.sh"
fi
if [ $version == "d" ]
then
  bash "scripts/Disco.sh"
fi
if [ $version == "e" ]
then
  bash "scripts/Eoan.sh"
fi
exit