========
growpart
========

Fix the growpart utility used by cloud-init.

CentOS 7 ships cloud-utils-growpart-0.29-2 which fails to grow root partitions
on GPT-partitioned disks: https://bugs.launchpad.net/cloud-utils/+bug/1706751

This element overwrites /usr/bin/growpart with a fixed version.
