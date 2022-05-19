#!/bin/bash

  virt-customize -a /data/Sandeep_VM/demo.qcow2 --root-password password:admin@123
  virt-customize -a /data/Sandeep_VM/demo.qcow2 --copy-in /data/iso/rhel-server-7.3-x86_64-dvd_redhat.iso:/root/
 # virt-customize -a /data/Sandeep_VM/demo.qcow2 --mkdir /root/allscript
  virt-customize -a /data/Sandeep_VM/demo.qcow2 --copy-in /data/Sandeep_VM/allscript:/root/
  virt-customize -a /data/Sandeep_VM/demo.qcow2 --hostname kepler
  virt-install \
  --name kepler \
  --memory 2048 \
  --vcpus 2 \
  --disk /data/Sandeep_VM/demo.qcow2 \
  --import \
  --os-variant rhel7
 # virsh set-user-password kepler esbc admin@123
  exit 0

