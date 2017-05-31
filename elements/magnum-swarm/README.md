OpenStack Magnum & Docker Swarm
===============================

This `[diskimage-builder](https://github.com/openstack/diskimage-builder)`
element can be used to build an image for use with OpenStack Magnum running
Docker Swarm.  This element does not explicitly provide an installation of
docker, and another element (e.g. docker-ce) should be used to provide this.

An example fedora 25 based image for use with a baremetal swarm cluster can be
built and uploaded to glance with the following:

    git clone https://github.com/stackhpc/stackhpc-image-elements
    git clone https://git.openstack.org/openstack/diskimage-builder.git
    git clone https://git.openstack.org/openstack/dib-utils.git
    export PATH="${PWD}/dib-utils/bin:$PATH"
    export ELEMENTS_PATH=diskimage-builder/elements
    export ELEMENTS_PATH=${ELEMENTS_PATH}:stackhpc-image-elements/elements
    export DIB_RELEASE=25
    diskimage-builder/bin/disk-image-create baremetal \
      baremetal \
      docker-ce \
      dracut-regenerate \
      enable-serial-console \
      fedora \
      grub2 \
      magnum-swarm \
      selinux-permissive \
      -o fedora-25-swarm.qcow2

    KERNEL_ID=`glance image-create --name fedora-swarm-kernel \
                                   --visibility public \
                                   --disk-format=aki \
                                   --container-format=aki \
                                   --file=fedora-25-swarm.vmlinuz \
                                   | grep id | tr -d '| ' | cut --bytes=3-57`
    RAMDISK_ID=`glance image-create --name fedora-swarm-ramdisk \
                                    --visibility public \
                                    --disk-format=ari \
                                    --container-format=ari \
                                    --file=fedora-25-swarm.initrd \
                                    | grep id |  tr -d '| ' | cut --bytes=3-57`
    BASE_ID=`glance image-create --name fedora-swarm \
                                    --os-distro fedora \
                                    --visibility public \
                                    --disk-format=qcow2 \
                                    --container-format=bare \
                                    --property kernel_id=$KERNEL_ID \
                                    --property ramdisk_id=$RAMDISK_ID \
                                    --file=fedora-25-swarm.qcow2 \
                                    | grep -v kernel | grep -v ramdisk \
                                    | grep id | tr -d '| ' | cut --bytes=3-57`
