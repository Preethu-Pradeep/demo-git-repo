#sudo yum install java-1.8.0-openjdk-devel -y
sudo yum install git -y
#sudo yum install maven -y
sudo yum install docker -y
sudo systemctl start docker

if [ -d "addressbook" ]
then
  echo "repo is cloned and exists"
  cd /home/ec2-user/addressbook
  git pull origin cicd-docker-1
else
  git clone https://github.com/preethid/addressbook.git
  cd /home/ec2-user/addressbook
  git checkout cicd-docker-1
fi

sudo docker build -t $1:$2 /home/ec2-user/addressbook

#${IMAGE_NAME}:${BUILD_NUMBER}