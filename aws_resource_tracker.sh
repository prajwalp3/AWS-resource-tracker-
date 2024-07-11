#!/bin/bash
###########
#Author:Prajwal P Prabhu
#Date:12th-July
#Version:V1
#thus script will report the aws resouce usage
###########


#What resource we are gonna track
set -x
#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

#list s3 buckets
echo "print the list of s3 buckets"
aws s3 ls
echo "print the list of ec2 buckets"

#list EC2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
echo "list of lambda "
#list Lambda
aws lambda list-functions
echo "list of iam users"

#list IAM Users
aws iam list-users

