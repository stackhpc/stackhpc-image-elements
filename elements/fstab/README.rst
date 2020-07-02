=====
fstab
=====
Adds custom lines to fstab

* DIB_FSTAB_<REF>_SRC: Describes the block special device, remote filesystem or filesystem image
    for loop device to be mounted or swap file or swap partition to be enabled.
* DIB_FSTAB_<REF>_PATH: This field describes the mount point (target) for the filesystem
* DIB_FTTAB_<REF>_TYPE: This field describes the type of the filesystem
* DIB_FSTAB_<REF>_OPTS: This field describes the mount options associated with the filesystem.
* DIB_FSTAB_<REF>_DUMP: This field is used by dump(8) to determine which filesystems need to be dumped
* DIB_FSTAB_<REF>_PASS: This field is used by fsck(8) to determine the order in which filesystem checks are done at boot time.

For more information see ``man fstab``.

Example
-------

export DIB_FSTAB_EXAMPLE_SRC=192.168.1.1/srv
export DIB_FSTAB_EXAMPLE_PATH=/mnt
export DIB_FSTAB_EXAMPLE_TYPE=nfs


