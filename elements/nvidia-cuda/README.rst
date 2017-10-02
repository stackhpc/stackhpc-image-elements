===========
nvidia-cuda
===========
Forked from CSC Finland's repo - https://github.com/CSCfi/diskimage-builder/tree/csc/elements/nvidia-cuda

Install NVidia CUDA packages.

* ``DISTRO_NAME`` The name of the Linux distribution to base on.
  Recognised settings are ``centos``, ``centos7``, ``rhel7`` and ``ubuntu16``

* ``DIB_NVIDIA_CUDA_PKGLIST`` A list of CUDA packages to install.
  Default is ``cuda``

* ``DIB_NVIDIA_CUDA_DELETE_REPO`` Delete the repo after building the image.
  Default is ``y``
