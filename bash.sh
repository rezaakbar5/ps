#!/bin/bash

# THE API TOKEM FOR YOU'RE BOT
TELEGRAM_TOKEN="6409879237:AAE1vPwbqfiWmRkV-AbCa6-tepM5w5FTGz0"

# YOU'RE CHAT ID FOR THE BOT TO WRITE YOU
CHAT_ID="5736569839"

# THE LOG FILE THAT WILL MONITOR YOU'RE SSH SERVER
LOG_FILE="/var/log/auth.log"

# THE FUNCTION TO SEND MESSAGE FROM YOU'RE SERVER TO TELEGRAM
send_message() {
    local message="$1"
    curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_TOKEN/sendMessage" -d "chat_id=$CHAT_ID&text=$message"
}

# IT WILL SAVE THE LOG FILE AND ALERT YOU 
tail -fn0 "$LOG_FILE" | while read line ; do
    if echo "$line" | grep -q "sshd"; then
        send_message "SSH Login Attempt:\n$line"
    fi

    ## MADE BY ALVI
