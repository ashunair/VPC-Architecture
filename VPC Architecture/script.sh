#!/bin/bash
sudo yum update -y
aws s3 cp s3://portfolio-web-static-site-bucket/html-web-app/ /var/www/html/
sudo systemctl restart httpd
sudo yum install awslogs -y
sudo systemctl start awslogsd
