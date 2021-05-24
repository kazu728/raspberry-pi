#!/bin/sh

sudo su - 
apt update -y && apt upgrade -y

install(){
  apt install -y \
  vim \
  sysstat \
  net-tools \
  wireshark \
  nmap \
  docker.io \
  docker-compose \
  rkhunter \
  build-essential
}

set_firewall(){

  ufw enable 
  ufw default deny

  allowed_ports=(22 80 443)

  for port in $allowed_ports
  do
    ufw allow $port
  done
}

enable_monitoring(){
  cd /etc/default/sysstat
  sed -e "s/false/true"
}

install
set_firewall
enable_monitoring
rkhunter -c