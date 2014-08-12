#!/bin/bash

# list nat rules
VBoxManage showvminfo "boot2docker-vm" | awk '/NIC/ && /Rule/ {print}'
