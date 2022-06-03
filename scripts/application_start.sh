chmod -R 777 /home/ec2-user/ezops-test-guilhermepardo

cd /home/ec2-user/ezops-test-guilhermepardo

docker build -t ezops-test-container .

cd /home/ec2-user

./docker_run.sh