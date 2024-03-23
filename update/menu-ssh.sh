#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
AKUN="AKUN SSH"
TIMES="10"
CHATID="-1002015199453"
KEY="6409879237:AAE1vPwbqfiWmRkV-AbCa6-tepM5w5FTGz0"
URL="https://api.telegram.org/bot$KEY/sendMessage"
colornow=$(cat /etc/ssnvpn/theme/color.conf)
NC="\e[0m"
RED="\033[0;31m" 
COLOR1="\033[1;36m"
COLBG1="\e[1;97;101m"                 
# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'
red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }

function addssh(){
clear
sldomain=`cat /etc/xray/dns`
slkey=$(cat /etc/slowdns/server.pub)
domen=`cat /etc/xray/domain`
portsshws=`cat ~/log-install.txt | grep -w "SSH Websocket" | cut -d: -f2 | awk '{print $1}'`
wsssl=`cat /root/log-install.txt | grep -w "SSH SSL Websocket" | cut -d: -f2 | awk '{print $1}'`

echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}            • SSH PANEL MENU •          ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -p "   Username : " Login
read -p "   Owner     : " OWNER
CHATIDGC="-1002015199453"
CEKFILE=/etc/xray/ssh.txt
if [ -f "$CEKFILE" ]; then
file001="OK"
else
touch /etc/xray/ssh.txt
fi

if grep -qw "$Login" /etc/xray/ssh.txt; then
echo -e "  [Error] Username \e[31m$Login\e[0m already exist"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -n 1 -s -r -p "  Press any key to back on menu"
menu-ssh
else
echo "$Login" >> /etc/xray/ssh.txt
fi

if [ -z $Login ]; then
echo -e " [Error] Username cannot be empty "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -n 1 -s -r -p "    Press any key to back on menu"
menu-ssh
fi

read -p "   Password : " Pass
if [ -z $Pass ]; then
echo -e "  [Error] Password cannot be empty "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu-ssh
fi
read -p "   Expired (hari): " masaaktif
if [ -z $masaaktif ]; then
echo -e "  [Error] EXP Date cannot be empty "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -n 1 -s -r -p "  Press any key to back on menu"
menu-ssh
fi
clear
###########
IP=$(curl -sS ifconfig.me);
ossl=`cat /root/log-install.txt | grep -w "OpenVPN" | cut -f2 -d: | awk '{print $6}'`
opensh=`cat /root/log-install.txt | grep -w "OpenSSH" | cut -f2 -d: | awk '{print $1}'`
db=`cat /root/log-install.txt | grep -w "Dropbear" | cut -f2 -d: | awk '{print $1,$2}'`
ssl="$(cat ~/log-install.txt | grep -w "Stunnel4" | cut -d: -f2)"
sqd="$(cat ~/log-install.txt | grep -w "Squid" | cut -d: -f2)"
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
sldomain=`cat /etc/xray/dns`
slkey=$(cat /etc/slowdns/server.pub)
OhpSSH=`cat /root/log-install.txt | grep -w "OHP SSH" | cut -d: -f2 | awk '{print $1}'`
OhpDB=`cat /root/log-install.txt | grep -w "OHP DBear" | cut -d: -f2 | awk '{print $1}'`
OhpOVPN=`cat /root/log-install.txt | grep -w "OHP OpenVPN" | cut -d: -f2 | awk '{print $1}'`

sleep 1
clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
PID=`ps -ef |grep -v grep | grep sshws |awk '{print $2}'`
TIMES="1"
CHATIDGC="-1002015199453"
KEY="6409879237:AAE1vPwbqfiWmRkV-AbCa6-tepM5w5FTGz0"
URL="https://api.telegram.org/bot$KEY/sendMessage"
TRX="
<code>INFO MASKU -Transaksi</code>
<code>────────────────────</code>
<b>  ⚠️TRANSAKSI AKUN SSH WS⚠️      </b>
<code>────────────────────</code>
<code>🌟Owner   : $OWNER</code>
<code>🌟Member  : $login</code>
<code>🌟Detail  : $AKUN</code>
<code>🌟Durasi  : $exp</code>
<code>🌟Server  : $domen</code>
<code>⚠️SELAMAT MENIKMATI⚠️</code>
<code>⚠️Script By Andyyuda⚠️</code>
<code>────────────────────</code>
<i>Notifikasi Via KLMPK-BOT</i>
<b>Tele : @Andyyuda</b>
"
curl -s --max-time $TIMES -d "chat_id=$CHATIDGC&disable_web_page_preview=1&text=$TRX&parse_mode=html" $URL
clear
if [[ ! -z "${PID}" ]]; then
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}           • SSH PANEL MENU •           ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "  Username     : $Login" 
echo -e "  Password     : $Pass"
echo -e "  Expired On   : $exp" 
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "  IP           : $IP" 
echo -e "  Host         : $domen" 
echo -e "  Host NS      : $sldomain" 
echo -e "  PubKey       : $slkey"
echo -e "  OpenSSH      : 22"
echo -e "  Dropbear     : $db" 
echo -e "  SSH-WS       : $portsshws, 8880" 
echo -e "  SSH-SSL-WS   : 443" 
echo -e "  SSH-UDP      : 56-65545"
echo -e "  SSH-UDP      : 1-65535"
echo -e "  SSL/TLS      : 447 , 777" 
echo -e "  SlowDNS port : 53,5300,8080"
echo -e "  UDPGW        : 7100-7300" 
echo -e "  SSH ACOUNT   : $domen:80/443@$Login:$Pass"
echo -e "  SSH UDP      : $domen:1-65535@$Login:$Pass"
echo -e "  OPEN VPN     : 1194"
echo -e "  OVPN TCP     : http://$IP:81/tcp.ovpn"
echo -e "  OVPN UDP     : http://$IP:81/udp.ovpn"
echo -e "  OVPN SSL     : http://$IP:81/ssl.ovpn"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "GET wss://bug.com/ HTTP/1.1[crlf]Host: [host][crlf]Upgrade: websocket[crlf][crlf]"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "Payload Websocket HTTP"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "GET / HTTP/1.1[crlf]Host: [host][crlf]Upgrade: websocket[crlf][crlf]"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "${CYAN}       Script By Andyyuda" 
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
else
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}           • SSH PANEL MENU •           ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "  Username     : $Login" 
echo -e "  Password     : $Pass"
echo -e "  Expired On   : $exp" 
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "  IP           : $IP" 
echo -e "  Host         : $domen" 
echo -e "  Host NS      : $sldomain" 
echo -e "  PubKey       : $slkey"
echo -e "  OpenSSH      : 22"
echo -e "  Dropbear     : $db" 
echo -e "  SSH-WS       : $portsshws, 8880" 
echo -e "  SSH-SSL-WS   : 443" 
echo -e "  SSH-UDP      : 56-65545"
echo -e "  SSH-UDP      : 1-65535"
echo -e "  SSL/TLS      : 447 , 777" 
echo -e "  SlowDNS port : 53,5300,8080"
echo -e "  UDPGW        : 7100-7300" 
echo -e "  SSH ACOUNT   : $domen:80/443@$Login:$Pass"
echo -e "  SSH UDP      : $domen:1-65535@$Login:$Pass"
echo -e "  OPEN VPN     : 1194"
echo -e "  OVPN TCP     : http://$IP:81/tcp.ovpn"
echo -e "  OVPN UDP     : http://$IP:81/udp.ovpn"
echo -e "  OVPN SSL     : http://$IP:81/ssl.ovpn"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "GET wss://bug.com/ HTTP/1.1[crlf]Host: [host][crlf]Upgrade: websocket[crlf][crlf]"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "Payload Websocket HTTP"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "GET / HTTP/1.1[crlf]Host: [host][crlf]Upgrade: websocket[crlf][crlf]"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "${CYAN}       Script By Andyyuda" 
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
fi
echo -e ""
read -n 1 -s -r -p "  Press any key to back on menu"
menu-ssh
}
function sshwss(){
    clear
portdb=`cat ~/log-install.txt | grep -w "Dropbear" | cut -d: -f2|sed 's/ //g' | cut -f2 -d","`
portsshws=`cat ~/log-install.txt | grep -w "SSH Websocket" | cut -d: -f2 | awk '{print $1}'`
if [ -f "/etc/systemd/system/sshws.service" ]; then
clear
else
wget -q -O /usr/bin/proxy3.js "https://raw.githubusercontent.com/myridwan/VVIP/ipuk/ssh/proxy3.js"
cat <<EOF > /etc/systemd/system/sshws.service
[Unit]
Description=WSenabler
Documentation=https://FranataSTORE.MY.ID

[Service]
Type=simple
ExecStart=/usr/bin/ssh-wsenabler
KillMode=process
Restart=on-failure
RestartSec=1s

[Install]
WantedBy=multi-user.target
EOF

fi

function start() {
        clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}            • WEBSOCKET MENU •          ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" 
wget -q -O /usr/bin/ssh-wsenabler "https://raw.githubusercontent.com/myridwan/VVIP/ipuk/ssh/sshws-true.sh" && chmod +x /usr/bin/ssh-wsenabler
systemctl daemon-reload >/dev/null 2>&1
systemctl enable sshws.service >/dev/null 2>&1
systemctl start sshws.service >/dev/null 2>&1
sed -i "/SSH Websocket/c\   - SSH Websocket           : $portsshws [ON]" /root/log-install.txt
echo -e "  [INFO] • ${green}SSH Websocket Started${NC}"
echo -e "  [INFO] • Restart is require for Changes"
echo -e "           to take effect"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "  Press any key to back on menu"
sshwss 
}

function stop() {
        clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}            • WEBSOCKET MENU •          ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" 
systemctl stop sshws.service >/dev/null 2>&1
tmux kill-session -t sshws >/dev/null 2>&1
sed -i "/SSH Websocket/c\   - SSH Websocket           : $portsshws [OFF]" /root/log-install.txt
echo -e "  [INFO] • ${red}SSH Websocket Stopped${NC}"
echo -e "  [INFO] • Restart is require for Changes"
echo -e "           to take effect"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "  Press any key to back on menu"
sshwss 
}

clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}           • WEBSOCKET MENU •           ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
PID=`ps -ef |grep -v grep | grep sshws |awk '{print $2}'`
if [[ ! -z "${PID}" ]]; then
echo -e "   • Websocket Is ${COLOR1}Running$NC"
else
echo -e "   • Websocket Is ${red}Not Running$NC"
fi
echo -e ""  
echo -e " ${COLOR1}[01]${NC} • Enable SSH WS  "
echo -e " ${COLOR1}[02]${NC} • Disable SSH WS"
echo -e ""  
echo -e " ${COLOR1}[00]${NC} • GO BACK"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -p " Select menu :  "  opt
echo -e ""
case $opt in
01 | 1) clear ; start ;;
02 | 2) clear ; stop ;;
00 | 0) clear ; menu ;;
*) clear ; menu-set ;;
esac
}
function cekssh(){

clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}          • SSH ACTIVE USERS •          ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""

if [ -e "/var/log/auth.log" ]; then
        LOG="/var/log/auth.log";
fi
if [ -e "/var/log/secure" ]; then
        LOG="/var/log/secure";
fi
               
data=( `ps aux | grep -i dropbear | awk '{print $2}'`);
cat $LOG | grep -i dropbear | grep -i "Password auth succeeded" > /tmp/login-db.txt;
for PID in "${data[@]}"
do
        cat /tmp/login-db.txt | grep "dropbear\[$PID\]" > /tmp/login-db-pid.txt;
        NUM=`cat /tmp/login-db-pid.txt | wc -l`;
        USER=`cat /tmp/login-db-pid.txt | awk '{print $10}'`;
        IP=`cat /tmp/login-db-pid.txt | awk '{print $12}'`;
        if [ $NUM -eq 1 ]; then
                echo "$PID - $USER - $IP";
        fi

done
echo " "
cat $LOG | grep -i sshd | grep -i "Accepted password for" > /tmp/login-db.txt
data=( `ps aux | grep "\[priv\]" | sort -k 72 | awk '{print $2}'`);

for PID in "${data[@]}"
do
        cat /tmp/login-db.txt | grep "sshd\[$PID\]" > /tmp/login-db-pid.txt;
        NUM=`cat /tmp/login-db-pid.txt | wc -l`;
        USER=`cat /tmp/login-db-pid.txt | awk '{print $9}'`;
        IP=`cat /tmp/login-db-pid.txt | awk '{print $11}'`;
        if [ $NUM -eq 1 ]; then
                echo "$PID - $USER - $IP";
        fi


done
if [ -f "/etc/openvpn/server/openvpn-tcp.log" ]; then
        echo " "

        cat /etc/openvpn/server/openvpn-tcp.log | grep -w "^CLIENT_LIST" | cut -d ',' -f 2,3,8 | sed -e 's/,/      /g' > /tmp/vpn-login-tcp.txt
        cat /tmp/vpn-login-tcp.txt
fi

if [ -f "/etc/openvpn/server/openvpn-udp.log" ]; then
        echo " "

        cat /etc/openvpn/server/openvpn-udp.log | grep -w "^CLIENT_LIST" | cut -d ',' -f 2,3,8 | sed -e 's/,/      /g' > /tmp/vpn-login-udp.txt
        cat /tmp/vpn-login-udp.txt
fi


rm -f /tmp/login-db-pid.txt
rm -f /tmp/login-db.txt
rm -f /tmp/vpn-login-tcp.txt
rm -f /tmp/vpn-login-udp.txt
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo "";
read -n 1 -s -r -p "   Press any key to back on menu"
menu-ssh
}
function ceklim(){
clear
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;41;36m         CEK USER MULTI SSH        \E[0m"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
if [ -e "/root/log-limit.txt" ]; then
echo "User Who Violate The Maximum Limit";
echo "Time - Username - Number of Multilogin"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
cat /root/log-limit.txt
else
echo " No user has committed a violation"
echo " "
echo " or"
echo " "
echo " The user-limit script not been executed."
fi
echo " ";
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo " ";
read -n 1 -s -r -p "Press any key to back on menu"
menu
}
function delssh(){
clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}           • SSH DELETE USERS •         ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"    
echo "   USERNAME        EXP DATE        STATUS"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"  
while read expired
do
AKUN="$(echo $expired | cut -d: -f1)"
ID="$(echo $expired | grep -v nobody | cut -d: -f3)"
exp="$(chage -l $AKUN | grep "Account expires" | awk -F": " '{print $2}')"
status="$(passwd -S $AKUN | awk '{print $2}' )"
if [[ $ID -ge 1000 ]]; then
if [[ "$status" = "L" ]]; then
printf "%-17s %2s %-17s %2s \n" "   • $AKUN" "$exp     " "LOCKED"
else
printf "%-17s %2s %-17s %2s \n" "   • $AKUN" "$exp     " "UNLOCKED"
fi
fi
done < /etc/passwd
JUMLAH="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"  
echo "   Total: $JUMLAH User"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -p "   Username : " Pengguna

if [ -z $Pengguna ]; then
echo -e "   [Error] Username cannot be empty "
else
if getent passwd $Pengguna > /dev/null 2>&1; then
userdel $Pengguna > /dev/null 2>&1
sed -i "s/$Pengguna//g" /etc/xray/ssh.txt
echo -e "   [INFO] User $Pengguna was removed."
else
echo -e "   [INFO] Failure: User $Pengguna Not Exist."
fi
fi
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu-ssh
}

function renewssh(){
clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}           • RENEW SSH ACCOUNT •        ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"    
echo "   USERNAME        EXP DATE        STATUS"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"  
while read expired
do
AKUN="$(echo $expired | cut -d: -f1)"
ID="$(echo $expired | grep -v nobody | cut -d: -f3)"
exp="$(chage -l $AKUN | grep "Account expires" | awk -F": " '{print $2}')"
status="$(passwd -S $AKUN | awk '{print $2}' )"
if [[ $ID -ge 1000 ]]; then
if [[ "$status" = "L" ]]; then
printf "%-17s %2s %-17s %2s \n" "   • $AKUN" "$exp     " "LOCKED"
else
printf "%-17s %2s %-17s %2s \n" "   • $AKUN" "$exp     " "UNLOCKED"
fi
fi
done < /etc/passwd
JUMLAH="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"  
echo "   Total: $JUMLAH User"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -p "   Username : " User

if getent passwd $User > /dev/null 2>&1; then
ok="ok"
else
echo -e "   [INFO] Failure: User $User Not Exist."
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu
fi

if [ -z $User ]; then
echo -e "   [Error] Username cannot be empty "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu
fi

egrep "^$User" /etc/passwd >/dev/null
if [ $? -eq 0 ]; then
read -p "Day Extend : " Days
if [ -z $Days ]; then
Days="1"
fi
Today=`date +%s`
Days_Detailed=$(( $Days * 86400 ))
Expire_On=$(($Today + $Days_Detailed))
Expiration=$(date -u --date="1970-01-01 $Expire_On sec GMT" +%Y/%m/%d)
Expiration_Display=$(date -u --date="1970-01-01 $Expire_On sec GMT" '+%d %b %Y')
passwd -u $User
usermod -e  $Expiration $User
egrep "^$User" /etc/passwd >/dev/null
echo -e "$Pass\n$Pass\n"|passwd $User &> /dev/null
clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}         • RENEW SSH ACCOUNT •          ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "   Username   : $User"
echo -e "   Days Added : $Days Days"
echo -e "   Expires on : $Expiration_Display"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
else
clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}           • RENEW SSH ACCOUNT •        ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "   Username Doesnt Exist      "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
fi
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu-ssh
}


function memberssh(){
clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}          • MEMBER SSH ACCOUNT •        ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"    
echo "   USERNAME        EXP DATE        STATUS"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"  
while read expired
do
AKUN="$(echo $expired | cut -d: -f1)"
ID="$(echo $expired | grep -v nobody | cut -d: -f3)"
exp="$(chage -l $AKUN | grep "Account expires" | awk -F": " '{print $2}')"
status="$(passwd -S $AKUN | awk '{print $2}' )"
if [[ $ID -ge 1000 ]]; then
if [[ "$status" = "L" ]]; then
printf "%-17s %2s %-17s %2s \n" "   • $AKUN" "$exp     " "LOCKED"
else
printf "%-17s %2s %-17s %2s \n" "   • $AKUN" "$exp     " "UNLOCKED"
fi
fi
done < /etc/passwd
JUMLAH="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"  
echo "   Total: $JUMLAH User"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu-ssh
}

function trialssh(){
clear
domen=`cat /etc/xray/domain`
portsshws=`cat ~/log-install.txt | grep -w "SSH Websocket" | cut -d: -f2 | awk '{print $1}'`
wsssl=`cat /root/log-install.txt | grep -w "SSH SSL Websocket" | cut -d: -f2 | awk '{print $1}'`
clear
IP=$(curl -sS ifconfig.me);
ossl=`cat /root/log-install.txt | grep -w "OpenVPN" | cut -f2 -d: | awk '{print $6}'`
opensh=`cat /root/log-install.txt | grep -w "OpenSSH" | cut -f2 -d: | awk '{print $1}'`
db=`cat /root/log-install.txt | grep -w "Dropbear" | cut -f2 -d: | awk '{print $1,$2}'`
ssl="$(cat ~/log-install.txt | grep -w "Stunnel4" | cut -d: -f2)"
OhpSSH=`cat /root/log-install.txt | grep -w "OHP SSH" | cut -d: -f2 | awk '{print $1}'`
sldomain=`cat /etc/xray/dns`
slkey=$(cat /etc/slowdns/server.pub)


Login=klmpk`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari="1"
Pass=1
echo Ping Host &> /dev/null
echo Create Akun: $Login &> /dev/null
sleep 0.5
echo Setting Password: $Pass &> /dev/null
sleep 0.5
clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
PID=`ps -ef |grep -v grep | grep sshws |awk '{print $2}'`

if [[ ! -z "${PID}" ]]; then
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}           • SSH PANEL MENU •           ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "  Username     : $Login" 
echo -e "  Password     : $Pass"
echo -e "  Expired On   : $exp" 
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "  IP           : $IP" 
echo -e "  Host         : $domen" 
echo -e "  Host NS      : $sldomain" 
echo -e "  PubKey       : $slkey"
echo -e "  OpenSSH      : 22"
echo -e "  Dropbear     : $db" 
echo -e "  SSH-WS       : $portsshws, 8880" 
echo -e "  SSH-SSL-WS   : 443" 
echo -e "  SSH-UDP      : 56-65545"
echo -e "  SSH-UDP      : 1-65535"
echo -e "  SSL/TLS      : 447 , 777" 
echo -e "  SlowDNS port : 53,5300,8080"
echo -e "  UDPGW        : 7100-7300" 
echo -e "  SSH ACOUNT   : $domen:80/443@$Login:$Pass"
echo -e "  SSH UDP      : $domen:1-65535@$Login:$Pass"
echo -e "  OPEN VPN     : 1194"
echo -e "  OVPN TCP     : http://$IP:81/tcp.ovpn"
echo -e "  OVPN UDP     : http://$IP:81/udp.ovpn"
echo -e "  OVPN SSL     : http://$IP:81/ssl.ovpn"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "GET wss://bug.com/ HTTP/1.1[crlf]Host: [host][crlf]Upgrade: websocket[crlf][crlf]"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "Payload Websocket HTTP"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "GET / HTTP/1.1[crlf]Host: [host][crlf]Upgrade: websocket[crlf][crlf]"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "${CYAN}       Script By Andyyuda" 
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
else

echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}           • SSH PANEL MENU •           ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "  Username     : $Login" 
echo -e "  Password     : $Pass"
echo -e "  Expired On   : $exp" 
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "  IP           : $IP" 
echo -e "  Host         : $domen" 
echo -e "  Host NS      : $sldomain" 
echo -e "  PubKey       : $slkey"
echo -e "  OpenSSH      : 22"
echo -e "  Dropbear     : 44, 69, 143" 
echo -e "  SSH-WS       : 80, 8880" 
echo -e "  SSH-SSL-WS   : 443" 
echo -e "  SSH-UDP      : 56-65545"
echo -e "  SSH-UDP      : 1-65535"
echo -e "  SSL/TLS      : 447, 777" 
echo -e "  SlowDNS port : 53,5300,8080"
echo -e "  UDPGW        : 7100-7300" 
echo -e "  SSH ACOUNT   : $domen:80/443@$Login:$Pass"
echo -e "  SSH UDP      : $domen:1-65535@$Login:$Pass"
echo -e "  OPEN VPN     : 1194"
echo -e "  OVPN TCP     : http://$IP:81/tcp.ovpn"
echo -e "  OVPN UDP     : http://$IP:81/udp.ovpn"
echo -e "  OVPN SSL     : http://$IP:81/ssl.ovpn"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "GET wss://bug.com/ HTTP/1.1[crlf]Host: [host][crlf]Upgrade: websocket[crlf][crlf]"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "Payload Websocket HTTP"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "GET / HTTP/1.1[crlf]Host: [host][crlf]Upgrade: websocket[crlf][crlf]"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "${CYAN}       Script By Andyyuda" 
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
fi
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu-ssh
}
function chngelimit() {
    clear
    echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC" | lolcat
    echo -e "$COLBG1         Chnge SSH OVPN Account          \E[0m"
    echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC" | lolcat
    NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/ssh/.ssh.db")
    if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
        echo ""
        echo "   You have no existing clients!"
        echo ""
        exit 0
    fi

    until [[ $ipvps =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '1' ]]; do
        echo -e " "
        read -rp "Input Username : " user
        CLIENT_EXISTS=$(grep -w $user /etc/ssh/.ssh.db | wc -l)

        if [[ ${CLIENT_EXISTS} == '0' ]]; then
            echo "No customer name available"
        else
            sec=3
            spinner=(⣻ ⢿ ⡿ ⣟ ⣯ ⣷)
            while [ $sec -gt 0 ]; do
                echo -ne "\033[0;31m ${spinner[sec]} Setting up a Premium Account $sec seconds...\r"
                sleep 1
                sec=$(($sec - 1))
            done
            clear
            echo -e "${COLOR1}INPUT DEPENDECIES ACCOUNT $user ${NC}"

            until [[ $iplim =~ ^[0-9]+$ ]]; do
                read -p "Limit User (IP): " iplim
            done

            if [ -z ${iplim} ]; then
                iplim="0"
            fi

            if [[ ${c} != "0" ]]; then
                echo "${iplim}" >/etc/ssh/${user}
            fi
            clear
            echo "-----------------------------------------------"
            echo -e "Chnge Vmess Account Username ${grenbo}$user${NC} Successfully"
            echo -e "limit Login SSH OVPN IP $iplim Device"
            echo "-----------------------------------------------"
            echo ""
            exit
        fi
    done

}
function autokill(){
clear
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info="${Green_font_prefix}[ON]${Font_color_suffix}"
Error="${Red_font_prefix}[OFF]${Font_color_suffix}"
cek=$(grep -c -E "^# Autokill" /etc/cron.d/tendang)
if [[ "$cek" = "1" ]]; then
sts="${Info}"
else
sts="${Error}"
fi
clear
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[44;1;39m             AUTOKILL SSH          \E[0m"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "Status Autokill : $sts        "
echo -e ""
echo -e "[1]  AutoKill After banned"
echo -e "[2]  AutoKill After 10 Minutes"
echo -e "[3]  AutoKill After 15 Minutes"
echo -e "[4]  Turn Off AutoKill/MultiLogin"
echo -e "[x]  Menu"
echo ""
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -p "Select From Options [1-4 or x] :  " AutoKill
read -p "Multilogin Maximum Number Of Allowed: " max
echo -e ""
case $AutoKill in
1)
echo -e ""
sleep 1
clear
echo > /etc/cron.d/tendang
echo > /etc/cron.d/lock
echo "# Autokill" >/etc/cron.d/tendang
echo "*/1 * * * *  root /usr/bin/tendang $max" >>/etc/cron.d/tendang && chmod +x /etc/cron.d/tendang
echo "" > /root/log-limit.txt
echo -e ""
echo -e "======================================"
echo -e ""
echo -e "      Allowed MultiLogin : $max"
echo -e "      AutoKill Every     : 1 Minutes"
echo -e ""
echo -e "======================================"
service cron reload >/dev/null 2>&1
service cron restart >/dev/null 2>&1
;;
2)
echo -e ""
sleep 1
clear
echo > /etc/cron.d/tendang
echo "# Autokill" >/etc/cron.d/tendang
echo "*/10 * * * *  root /usr/bin/tendang $max" >>/etc/cron.d/tendang && chmod +x /etc/cron.d/tendang
echo "" > /root/log-limit.txt
echo -e ""
echo -e "======================================"
echo -e ""
echo -e "      Allowed MultiLogin : $max"
echo -e "      AutoKill Every     : 10 Minutes"
echo -e ""
echo -e "======================================"
service cron reload >/dev/null 2>&1
service cron restart >/dev/null 2>&1
;;
3)
echo -e ""
sleep 1
clear
echo > /etc/cron.d/tendang
echo "# Autokill" >/etc/cron.d/tendang
echo "*/15 * * * *  root /usr/bin/tendang $max" >>/etc/cron.d/tendang && chmod +x /etc/cron.d/tendang
echo "" > /root/log-limit.txt
echo -e ""
echo -e "======================================"
echo -e ""
echo -e "      Allowed MultiLogin : $max"
echo -e "      AutoKill Every     : 15 Minutes"
echo -e ""
echo -e "======================================"
service cron reload >/dev/null 2>&1
service cron restart >/dev/null 2>&1
;;
4)
rm -fr /etc/cron.d/tendang
echo "" > /root/log-limit.txt
echo -e ""
echo -e "======================================"
echo -e ""
echo -e "      AutoKill MultiLogin Turned Off"
echo -e ""
echo -e "======================================"
service cron reload >/dev/null 2>&1
service cron restart >/dev/null 2>&1
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac
read -n 1 -s -r -p "Press any key to back on menu"
menu
}
clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " \e[1;97;101m            MENU MANAGER SSH           \E[0m"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\033[1;93m〔⎆〕 ${grenbo}1.${NC} \033[0;36mCreating a SSH Account${NC}"
echo -e "\033[1;93m〔⎆〕 ${grenbo}2.${NC} \033[0;36mTriall a Trial Account${NC}"
echo -e "\033[1;93m〔⎆〕 ${grenbo}3.${NC} \033[0;36mUser SSH Online${NC}"
echo -e "\033[1;93m〔⎆〕 ${grenbo}4.${NC} \033[0;36mEnable Ws SSH${NC}"
echo -e "\033[1;93m〔⎆〕 ${grenbo}5.${NC} \033[0;36mDelete SSH Account${NC}"
echo -e "\033[1;93m〔⎆〕 ${grenbo}6.${NC} \033[0;36mRenew SSH${NC}"
echo -e "\033[1;93m〔⎆〕 ${grenbo}7.${NC} \033[0;36mCek Member SSH${NC}"
echo -e "\033[1;93m〔⎆〕 ${grenbo}8.${NC} \033[0;36mMullog SSH ${NC}"
echo -e "\033[1;93m〔⎆〕 ${grenbo}9.${NC} \033[0;36mAuto Kill user SSH ${NC}"
echo -e "\033[1;93m〔⎆〕 ${grenbo}10.${NC} \033[0;36mChange Limit ${NC}"
echo -e "\033[1;93m〔⎆〕 ${grenbo}11.${NC} \033[0;36mGo Back Menu${NC}"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -p " Select menu :  "  opt
echo -e ""
case $opt in
01 | 1) clear ; addssh ;;
02 | 2) clear ; trialssh ;;
03 | 3) clear ; cekssh ;;
04 | 4) clear ; sshwss ;;
05 | 5) clear ; delssh ;;
06 | 6) clear ; renewssh ;;
07 | 7) clear ; memberssh ;;
08 | 8) clear ; ceklim ;;
09 | 9) clear ; autokill ;;
10 | 10) clear ; chngelimit ;;
11 | 11) clear ; menu ;;
*) clear ; menu-ssh ;;
esac

       
