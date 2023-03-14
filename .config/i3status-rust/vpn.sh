#!/usr/bin/env bash

vpn="CDN77"

if [[ "${1}" == "status" ]]; then
  if nmcli -t con show $vpn | grep -qi 'VPN connected'; then
	echo ""
  else
	echo ""
  fi

elif [[ "${1}" == "toggle" ]]; then
  if nmcli -t con show $vpn | grep -qi 'VPN connected'; then
	nmcli con down $vpn
	notify-send "$vpn VPN Down"
  else
	nmcli con up $vpn
	notify-send "$vpn VPN Active"
  fi
fi
