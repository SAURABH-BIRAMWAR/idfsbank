#!/bin/bash
yum -y update
yum install -y ruby
yum install -y aws-cli
mkdir -p /tmp/codedeploy
cd /tmp/codedeploy
aws s3 cp s3://aws-codedeploy-us-east-1/latest/install . --region us-west-2 
chmod +x ./install
./install auto
service codedeploy-agent start