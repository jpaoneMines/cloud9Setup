#!/bin/bash

echo -e "\033[1;31m[0%] Changing to directory /\033[0m"
cd ~
echo -e "\033[1;31m[8%] Making directory /plugins\033[0m"
mkdir plugins
echo -e "\033[1;31m[15%] Changing into directory /plugins\033[0m"
cd plugins
echo -e "\033[1;31m[22%] Cloning Cloud9-VNC from github\033[0m"
git clone https://github.com/acabey/cloud9-vnc.git
echo -e "\033[1;31m[30%] Changing into directory /plugins/cloud9-vnc\033[0m"
cd cloud9-vnc
echo -e "\033[1;31m[38%] Updating package repository\033[0m"
sudo apt-get update
echo -e "\033[1;31m[46%] Installing supervisor package\033[0m"
sudo apt-get install supervisor
echo -e "\033[1;31m[53%] Installing x11vnc package\033[0m"
sudo apt-get install x11vnc
echo -e "\033[1;31m[61%] Installing xvfb package\033[0m"
sudo apt-get install xvfb
echo -e "\033[1;31m[68%] Installing fluxbox package\033[0m"
sudo apt-get install fluxbox
echo -e "\033[1;31m[76%] Installing novnc package\033[0m"
sudo apt-get install novnc
echo -e "\033[1;31m[84%] Installing Cloud9-VNC\033[0m"
sudo ./install.sh
echo -e "\033[1;31m[91%] Installing SFML package\033[0m"
sudo apt-get install libsfml-dev
echo -e "\033[1;31m[98%] Returning to workspace\033[0m"
cd /home/ubuntu/workspace
echo -e "\033[1;31m[100%] Done!\033[0m"
