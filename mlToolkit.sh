#!/bin/bash
# System update
yum update -y
# Install Git
yum install git -y

# Fetch dependencies
aws s3 cp s3://poc-ml-op/resources/requirements.txt requirements.txt --region eu-west-1

# Install dependencies
pip install -r requirements.txt --no-cache-dir

