=========
mlnx-ofed
=========
Install Mellanox-OFED RPMs from a local repo using ``yum``.

* ``DIB_MLNX_OFED_REPO_FILE`` Define a URL for the Mellanox OFED package repo file.
  NOTE: Overrides ``DIB_MLNX_OFED_REPO`` and ``DIB_MLNX_OFED_VERSION`` when defined.
  e.g. https://linux.mellanox.com/public/repo/mlnx_ofed/latest/rhel7.6/mellanox_mlnx_ofed.repo

* ``DIB_MLNX_OFED_REPO`` Define a URL for the Mellanox OFED package repo.
  This is the directory containing the RPMS/ subdirectory.
  e.g. http://10.41.253.100:4120/MLNX_OFED_LINUX-4.6-1.0.1.1-rhel7.6-x86_64

* ``DIB_MLNX_OFED_VERSION`` Define a version for the OFED release.
  This is used in the Yum repo name.
  e.g. 4.6-1

* ``DIB_MLNX_OFED_PKGLIST`` Define a space-separated list of packages to install.
  Default is ``mlnx-ofed-hpc mlnx-fw-updater``

* ``DIB_MLNX_OFED_DELETE_REPO`` Delete the repo after building the image.
  Default is ``y``
