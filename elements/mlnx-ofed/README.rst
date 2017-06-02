=========
mlnx-ofed
=========
Install Mellanox-OFED RPMs from a local repo using yum.

`DIB_MLNX_OFED_REPO` Define a URL for the Mellanox OFED package repo.

`DIB_MLNX_OFED_VERSION` Define a version for the OFED release.

`DIB_MLNX_OFED_PKGLIST` Define a space-separated list of packages to install.
  Default is `mlnx-ofed-hpc mlnx-fw-updater`

`DIB_MLNX_OFED_DELETE_REPO` Delete the repo after building the image.
  Default is `y`
