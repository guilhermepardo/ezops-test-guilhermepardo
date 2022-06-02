#!/bin/bash

sudo chmod -R 777 /home/ec2-user/repos/ezops-test-guilhermepardo

cd /home/ec2-user/repos/ezops-test-guilhermepardo

export NVM_DIR="$HOME/.nvm"	
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

npm install

npm start > server.out.log 2> server.err.log < /dev/null &