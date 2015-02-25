#!/bin/sh

NAME=$1
PROFILE=$2
OTHER=$3
aws ec2 describe-instances --filter "Name=tag-key,Values=Name" "Name=tag-value,Values=$NAME" --query 'Reservations[].Instances[?State.Name==`running`].PrivateIpAddress[]' --profile $2 $3
