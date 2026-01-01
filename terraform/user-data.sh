#!/bin/bash
apt update -y
apt install -y docker.io git

systemctl start docker
systemctl enable docker
usermod -aG docker ubuntu

cd /home/ubuntu
git clone https://github.com/<https://github.com/RShub1105>/Winter_project.git
cd devops-journey/final-project/docker

docker compose up -d --build
