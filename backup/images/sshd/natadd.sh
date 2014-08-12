#!/bin/bash

# add a nat rule(33->33)
VBoxManage controlvm boot2docker-vm natpf1 "nat_rule_33,tcp,127.0.0.1,33,,33"
