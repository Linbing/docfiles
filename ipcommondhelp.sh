#!/usr/bin/env bash



echo ">> ip addr "
echo " ip addr add ip/mask dev eth_name"
echo " ip addr del ip/mask dev eth_name"

echo ">> ip route"
echo " ip route add default via gateway_ip dev eth_name"
echo " ip route del default "


echo ">> ip link "
echo " ip link show"
echo " ip link set eth_name up/down"

