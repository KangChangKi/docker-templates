#!/bin/bash

VM_IP_BINDING=$(boot2docker ip)
PORT=33

ssh root@$VM_IP_BINDING -p $PORT
