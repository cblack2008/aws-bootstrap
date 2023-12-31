#!/bin/bash

STACK_NAME=awsbootstrap 
REGION=us-east-1 
CLI_PROFILE=Dev/DevAdmin

EC2_INSTANCE_TYPE=t2.micro 

# Deploy the CloudFormation template
echo -e "\n\n=========== Deploying main.yml ==========="
echo -e "Using profile [$CLI_PROFILE] and region [$REGION] an instance type of [$EC2_INSTANCE_TYPE]"
aws cloudformation deploy \
  --region $REGION \
  --profile $CLI_PROFILE \
  --stack-name $STACK_NAME \
  --template-file main.yml \
  --no-fail-on-empty-changeset \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameter-overrides EC2InstanceType=$EC2_INSTANCE_TYPE