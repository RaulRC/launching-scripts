#!/bin/bash
# System update
yum update -y
# Install tools
yum install git emacs -y
# Install Tensor
pip install --upgrade tensorflow
# Clone repo
git clone https://github.com/RaulRC/ml-aws.git
# Execute program
python ml-aws/helloTensor.py
