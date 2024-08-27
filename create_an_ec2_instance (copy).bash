#!/bin/bash

# Set your AWS credentials

# Read the number of instances to create
read -r -p "Enter the number of EC2 instances to create: " count

# Create the specified number of EC2 instances
for ((i=1; i<=count; i++)); do
  echo "Creating EC2 instance $i..."
  aws ec2 run-instances \
    --image-id ami-0369926182151db6b \
    --instance-type t2.micro \
    --key-name serverone \
    --security-group-ids sg-0594600dd54618405
done

echo "$count EC2 instances have been created."
