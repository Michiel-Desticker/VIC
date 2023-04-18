sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker vagrant
sudo systemctl restart docker
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

sudo dnf install python pip -y
pip install paho-mqtt