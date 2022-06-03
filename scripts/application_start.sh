chmod -R 777 /home/ec2-user/ezops-test-guilhermepardo

cd /home/ec2-user/ezops-test-guilhermepardo

docker build -t ezops-test-container .

cd /home/ec2-user

chmod +x docker_run.sh

./docker_run.sh