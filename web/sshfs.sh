if [2 -eq $#]
then
  echo 'no container name/id'
  exit -1
fi

VM_IP_BINDING=$(boot2docker ip)
clear
SSH_BINDING=$(docker port $1 22 | sed s/0.0.0.0://)

sshfs root@$VM_IP_BINDING:/ -p $SSH_BINDING $2
