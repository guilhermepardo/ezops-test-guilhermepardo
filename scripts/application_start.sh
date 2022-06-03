chmod -R 777 /home/ec2-user/ezops-test-guilhermepardo

cd /home/ec2-user/ezops-test-guilhermepardo

docker build -t ezops-test-container .

docker run -d -p 80:3000 -e MONGO_DB_URL="mongodb+srv://admin:2r3g6gxsx459Ie93@cluster0.xdpxo.mongodb.net/db?retryWrites=true&w=majority" ezops-test-container