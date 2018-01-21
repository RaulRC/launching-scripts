#!/bin/bash
# System update
yum update -y
# Install Git
yum install git emacs -y
# Clone repo
git clone https://github.com/RaulRC/ml-aws.git
# Fetch data
mkdir data
aws s3 cp s3://poc-ml-op/data/terrorism.csv data/terrorism.csv --region eu-west-1
aws s3 cp s3://poc-ml-op/resources/requirements.txt requirements.txt --region eu-west-1
# Install dependencies
pip install -r requirements.txt --no-cache-dir
# Execute program
python ml-aws/terrorAnalysis.py
