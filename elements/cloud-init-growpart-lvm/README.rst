=============
cloud-init-growpart-lvm
=============

This element enables growpart for OS images with LVM.
To enable this element simply include it in the elements list.

Dependencies:
* ``/usr/bin/growpart`` is needed on the system in order to grow the partition.
    However it is part of different packages depending on linux family. That
    is already taken care of by package-installs.