=============
cloud-init-growpart-lvm
=============

This element enables growpart for OS images with LVM.
To enable this element simply include it in the elements list.

* ``DIB_CLOUD_INIT_GROWPART_DEVICES`` list of partition names that needs to be 
    populated in order for cloud-init to grow it. Populating it is mandatory.

Dependencies:
* ``/usr/bin/growpart`` is needed on the system in order to grow the partition.
    However it is part of different packages depending on linux family. That
    is already taken care of by package-installs.