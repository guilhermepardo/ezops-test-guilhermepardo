#!/bin/bash

sudo chmod -R 777 /home/ec2-user/ezops-test-guilhermepardo

cd /home/ec2-user/ezops-test-guilhermepardo

export NVM_DIR="$HOME/.nvm"	
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm	
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path now)

npm install

npm start