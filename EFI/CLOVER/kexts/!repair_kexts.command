#!/bin/bash
echo "********************************************************"
echo "This Script Will Allow You To Repair Your System Kext Permissions."
echo "Author: Sass860h | James Anthony"
echo "********************************************************"
sudo chmod -R 755 /System/Library/Extensions
sudo chmod -R 755 /Library/Extensions
sudo chown -R root:wheel /System/Library/Extensions
sudo chown -R root:wheel /Library/Extensions
sudo touch /System/Library/Extensions
sudo touch /Library/Extensions
echo "Rebuilding Kext Cache..."
sudo kextcache -i /
sudo kextcache -u /
echo "."
echo "Process Complete..." 
echo "All System Kexts Have Been Repaired"
read -p "Press Any Key To Exit"
