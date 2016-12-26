This repository contains Ansible environment for setting up kubernetes on bare metal VM as per described in this page:

http://kubernetes.io/docs/getting-started-guides/centos/centos_manual_config/

# Assumptions

- Using Ansible (v2.1.2.0, tried on Fedora 25 workstation)

- Single master node and 3 minion nodes

- IP addresses as hardcoded in the kube-cluster inventory and hosts_file (roles/kubernetes/files)

# Setup

- Prepare 4 x CentOS 7 64-bit Server machines with minimal installation. They can be it in a VM, AWS, or any other platform. They have to be in the same subnet or must be able to route to each other using IPv4 addresses.

- Edit the `inventory/kube-cluster` file and adjust the IP addresses of the machines

- Edit the `playbooks/roles/kubernetes/files/hosts_file`, and adjust the IP addresses of the machines

# Run the playbook

```
$ ansible-playbook -i inventory/kube-cluster playbooks/kube-cluster.yaml
```

Watch until all the tasks finished.
