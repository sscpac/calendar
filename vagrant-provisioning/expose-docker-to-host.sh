#!/bin/bash

# expose Docker engine remote API on our private ip.  
echo  "DOCKER_OPTS=\"-H tcp://192.168.56.3:2375\"" >> /etc/default/docker
service docker restart

echo "export DOCKER_HOST=tcp://192.168.56.3:2375" >> /home/vagrant/.bash_profile
