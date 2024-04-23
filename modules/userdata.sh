#!/bin/bash
yum update -y
yum install -y ansible -y
cd /etc/ansible
git clone https://github.com/sanju02g/devops_auto.git
