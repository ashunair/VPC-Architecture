#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo aws s3 cp s3://portfolio-web-static-site-bucket/html-web-app/ /var/www/html/ --recursive
sudo systemctl restart httpd
sudo yum install amazon-cloudwatch-agent -y
# Start and enable the Amazon CloudWatch Agent
sudo systemctl start amazon-cloudwatch-agent
sudo systemctl enable amazon-cloudwatch-agent