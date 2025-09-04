#!/bin/bash

############################################################
# 
# Author : Vikram S
# Intention : Practice
# Purpose : List the contents of some basic aws resources
#
############################################################

set -x

# Commands given below doesnt work if your configured account lacks sufficient 
# permissions
# The above comment applies to all the below commands

# Gives information about the account you have configured in you cli
# with "aws configure" command

aws account get-account-information

# lists all the s3 buckets

aws s3 ls

# lists EC2 instances' IDs provisioned

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# lists IAM uses

aws iam list-users
