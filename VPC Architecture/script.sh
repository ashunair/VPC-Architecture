#!/bin/bash
sudo apt update && sudo apt upgrade -y
aws s3 cp s3://web-config-project/index.html /var/www/html/
sudo systemctl restart httpd
sudo apt install awslogs -y
sudo systemctl start awslogsd
