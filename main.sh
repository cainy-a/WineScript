echo 'Welcome to the Ubuntu Wine Auto Installer by Cain Atkinson,'
echo 'Please select your Ubuntu Version.'
read -p "x=Xenial, b=Bionic, d=Disco, e=Eoan: " version
if [ $version == "x" ];
then
  bash "Xenial.sh"
fi
if [ $version == "b" ]
then
  bash "Bionic.sh"
fi
if [ $version == "d" ]
then
  bash "Disco.sh"
fi
if [ $version == "e" ]
then
  bash "Eoan.sh"
fi
exit