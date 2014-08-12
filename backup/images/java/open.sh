#!/bin/bash
VM_IP_BINDING=$(boot2docker ip)

open http://$VM_IP_BINDING:$1
