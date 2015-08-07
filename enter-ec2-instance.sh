#!/bin/sh
# require get-ipaddress
# https://github.com/simeji/aws-utilities/blob/master/get-ip-address.sh

(test -z $1 || test -z $2) && echo "require {NameTag}, {Profile}, [{UserName}]" && exit 2

name=$1
profile=$2
user=$3

test -z $user && user=$USER
ip=`get-ip-address $name $profile | head -1`
ssh -t $user@$ip
