echo 'Welcome to the Ubuntu Wine Auto Installer by Cain Atkinson,'
echo 'Please select your Ubuntu Version.'
read -s 'x=Xenial, b=Bionic, d=Disco, e=Eoan: ' version
if [$version == "x"];
then
  ./Xenial.sh
  exit
if [$version == "b"]
then
  ./Bionic.sh
  exit
if [$version == "d"]
then
  ./Disco.sh
  exit
if [$version == "e"]
t