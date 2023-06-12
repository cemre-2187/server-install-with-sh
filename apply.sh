#!/bin/sh
for fn in `cat ipblock.txt`; do

if [[ ${fn:0:14} == *"-"* ]];
then
ip=${fn:0:13}
else
ip=${fn:0:14}
fi
echo $ip
sudo sshpass -p mete123 ssh -o stricthostkeychecking=no root@$ip 'bash -s' < update.sh ${fn:19:6} ${fn:15:3}
done