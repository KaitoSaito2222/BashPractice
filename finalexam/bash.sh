#!/bin/bash

# 1. Update the Firewall:
sudo ufw allow 4000/tcp

# 2. Modify the Hosts File:
HOST_ENTRY="127.0.0.1 inclass-quiz.com"
if ! grep -q "inclass-quiz.com" /etc/hosts; then
    printf "$HOST_ENTRY" | sudo tee -a /etc/hosts > /dev/null
fi

# 3. Start a Python Web Server:
if lsof -Pi :4000 -sTCP:LISTEN -t >/dev/null ; then
    sudo kill -9 $(lsof -Pi :4000 -sTCP:LISTEN -t)
fi

if [ ! -f index.html ]; then
    printf "<html><body><h1>Python Web Server is Running!</h1><p>Setup completed successfully.</p></body></html>" > index.html
fi

python3 -m http.server 4000 &
SERVER_PID=$!

# 4. Open Firefox:
firefox http://inclass-quiz.com:4000 &