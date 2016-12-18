#!/usr/bin/env bash

/usr/bin/etcdctl mkdir /kube-centos/network
/usr/bin/etcdctl mk /kube-centos/network/config "{ \"Network\": \"172.30.0.0/16\", \"SubnetLen\": 24, \"Backend\": { \"Type\": \"vxlan\" } }"
