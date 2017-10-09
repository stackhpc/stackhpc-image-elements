===========
nvidia-cuda
===========
Forked from CSC Finland's repo - https://github.com/CSCfi/diskimage-builder/tree/csc/elements/nvidia-cuda

Install NVidia CUDA packages.

* ``DIB_NVIDIA_CUDA_REPO`` Path to the CUDA RPM/Deb repo.
  Default is ``https://developer.download.nvidia.com/compute/cuda/repos/$distro/x86_64``

* ``DIB_NVIDIA_CUDA_VERSION`` Version of CUDA to install
  Possible values include: ``7.0-28``, ``7.5-18``, ``8.0.44-1``, ``8.0.61-1``, ``9.0.176-1``.
  Default is ``9.0.176-1``

* ``DIB_NVIDIA_CUDA_PKGLIST`` A list of CUDA packages to install.
  Default is ``cuda``

* ``DIB_NVIDIA_CUDA_DELETE_REPO`` Delete the repo after building the image.
  Default is ``y``
