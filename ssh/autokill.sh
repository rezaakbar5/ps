#!/bin/bash
# auto kill multi login tiap 5 detik

cd /usr/bin
wget -O tendang "https://raw.githubusercontent.com/rezaakbar5/ps/master/tendang.sh"
chmod +x tendang

cd

echo "* * * * * root /usr/bin/tendang" >> /etc/crontab
echo "* * * * * root sleep 1; /usr/bin/tendang" >> /etc/crontab
echo "* * * * * root sleep 2; /usr/bin/tendang" >> /etc/crontab
echo "* * * * * root sleep 3; /usr/bin/tendang" >> /etc/crontab
echo "* * * * * root sleep 4; /usr/bin/tendang" >> /etc/crontab
echo "* * * * * root sleep 5; /usr/bin/tendang" >> /etc/crontab
echo "* * * * * root sleep 6; /usr/bin/tendang" >> /etc/crontab
echo "* * * * * root sleep 7; /usr/bin/tendang" >> /etc/crontab
echo "* * * * * root sleep 8; /usr/bin/tendang" >> /etc/crontab
echo "* * * * * root sleep 9; /usr/bin/tendang" >> /etc/crontab
echo "* * * * * root sleep 10; /usr/bin/tendang" >> /etc/crontab
echo "* * * * * root sleep 11; /usr/bin/tendang" >> /etc/crontab

service cron restart
