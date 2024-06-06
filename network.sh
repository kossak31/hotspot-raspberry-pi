#!/bin/bash
sudo nmcli connection add type wifi ifname wlan0 con-name hotspot autoconnect yes ssid hotspot 

sudo nmcli connection modify hotspot 802-11-wireless.mode ap 802-11-wireless.band bg ipv4.method shared

sudo nmcli connection modify hotspot wifi-sec.key-mgmt wpa-psk
sudo nmcli connection modify hotspot wifi-sec.psk 12345678
