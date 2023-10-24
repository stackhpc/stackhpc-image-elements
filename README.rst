=======================
StackHPC Image Elements
=======================

This repository provides OpenStack `Diskimage Builder (DIB)
<https://github.com/openstack/diskimage-builder>`_ elements for scientific
and cloud computing environments.

* Documentation: https://github.com/stackhpc/stackhpc-image-elements/tree/master/README.rst
* Source: https://github.com/stackhpc/stackhpc-image-elements
* Bugs: https://github.com/stackhpc/stackhpc-image-elements/issues
* License: Apache 2.0

Elements
========

This repository provides the following DIB elements:

* ``docker-ce``: Installs Docker CE (Community Edition) for RPM-based distros.
* ``magnum-swarm``: Installs dependencies necessary for running Docker Swarm
  clusters on OpenStack Magnum.
* ``openhpc``: Installs an OpenHPC repo and core packages.
* ``mlnx-ofed``: Installs a Mellanox OFED repo and a configurable set of core packages.
* ``sriov-hypervisor``: Prepare a hypervisor with networking preparation for SR-IOV support.
* ``hpc-hypervisor``: Kernel and package optimisations for hypervisor virt optimisations.
* ``dhcp-on``: Configures network for DHCP only on a single, configurable interface name.
* ``ipa-extra-hardware``: Installs tools for enhanced hardware inspection in an
  Ironic Python Agent (IPA) ramdisk image.
* ``nvidia-cuda``: Installs Nvidia CUDA repo and packages for GPU support.
* ``centos-linkup-extra``: Allows extra time for slow network links to come up.
* ``centos7-vault``: Deploy older releases of CentOS 7
* ``cloud-init-growpart-lvm``: Grows designated LVM partition.
* ``rocky-container-stackhpc``: Custom containerfiles for usage with rocky-container element builds
