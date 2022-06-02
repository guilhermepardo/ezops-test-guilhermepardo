#!/bin/bash

sudo chmod -R 777 /home/ec2-user/ezops-test-guilhermepardo

cd /home/ec2-user/repos/ezops-test-guilhermepardo

npm install

npm start > server.out.log 2> server.err.log < /dev/null &