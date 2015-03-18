#!/bin/sh

(test -z $1 || test -z $2) && echo "require {NameTag}, {Profile}" && exit 1
NAME=$1
PROFILE=$2
OTHER=$3
aws ec2 describe-instances --filter "Name=tag-key,Values=Name" "Name=tag-value,Values=$NAME" --query 'Reservations[].Instances[?State.Name==`running`].PrivateIpAddress[]' --profile $2 $3 | jq -r '.[]'
