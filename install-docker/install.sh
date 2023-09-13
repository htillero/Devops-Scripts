apt-get update
apt-get -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
apt-get update
curl -fsSLk https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-get install docker-ce
groupadd docker
usermod -aG docker jenkins
service jenkins restart