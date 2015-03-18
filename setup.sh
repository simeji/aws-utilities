#!/bin/sh

dir="/usr/local/bin"

# The function to make symbolic link
# Arguments
# $1 : target of symlink path
# $2 : linked file path
makeSymLink() {
  if [ -e "$1" ]; then
    echo "$1 is already exists"
  else
    case "$0" in
      /*) cur=`dirname "$0"` ;;
      *) cur=`dirname "$PWD/$0"` ;;
    esac
    ln -s $cur$2 $1
    chmod 755 $1
    if [ $? -eq 0 ]; then
      echo "create symlink $1"
    fi
  fi
}

makeSymLink "${dir}/get-ip-address" "/get-ip-address.sh"
makeSymLink "${dir}/enter-ec2-instance" "/enter-ec2-instance.sh"
