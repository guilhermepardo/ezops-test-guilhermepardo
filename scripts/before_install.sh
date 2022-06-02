DIR="/home/ec2-user/repos/ezops-test-guilhermepardo"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi