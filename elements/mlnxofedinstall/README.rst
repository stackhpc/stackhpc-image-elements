=========
mlnxofedinstall
=========
Build and install Mellanox OFED drivers using ``mlnxofedinstall``.

* ``DIB_MLNX_OFED_VERSION`` Define a version for the OFED release.
  This is used to construct the URL to download the drivers tarball from.
  e.g. "23.10-2.1.3.1"

* ``DIB_MLNX_OFED_OS_DISTRIBUTION`` Define an OS distribution to build 
  drivers for.
  e.g. ``rhel9.3``

* ``DIB_MLNX_OFED_INSTALL_ARGS`` Additional arguments to pass to 
  ``mlnxofedinstall``.
  Default is ``--hypervisor --skip-repo`` 
