#!/bin/bash

# stop the vm before change
boot2docker down

# delete a rule by the rule name
VBoxManage modifyvm boot2docker-vm --natpf1 delete nat_rule_33

# start the vm after change
boot2docker up
