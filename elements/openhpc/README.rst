=======
openhpc
=======
Install OpenHPC RPMs from a repo using ``yum``.

* ``DIB_OPENHPC_VERSION`` Specify the version of OpenHPC to install.  OpenHPC 1.3
  is based on CentOS 7, and OpenHPC 2.0 is based on CentOS 8.  Default is ``2.0``

* ``DIB_OPENHPC_REPO_RPM`` Override default settings for the URL for the OpenHPC repo
  RPM package.

  For OpenHPC 1.3 the default is https://github.com/openhpc/ohpc/releases/download/v1.3.GA/ohpc-release-1.3-1.el7.x86_64.rpm

  For OpenHPC 2.0 the default is http://repos.openhpc.community/OpenHPC/2/CentOS_8/x86_64/ohpc-release-2-1.el8.x86_64.rpm

* ``DIB_OPENHPC_GRPLIST`` Define a space-separated list of package groups to install.
  Default for OpenHPC 1.3 is:

  ``ohpc-base-compute ohpc-slurm-client "InfiniBand Support"``

  Default for OpenHPC 2.0 is no groups.

  Set to an empty string to install no package groups

* ``DIB_OPENHPC_PKGLIST`` Define a space-separated list of packages to install.
  Default is for OpenHPC 1.3 is:

  ``lmod-ohpc mrsh-ohpc lustre-client-ohpc``

  Default for OpenHPC 2.0 is:

  ``ohpc-base lmod-ohpc ohpc-slurm-client ohpc-gnu9-runtimes openmpi4-gnu9-ohpc``

  Set to an empty string to install no individual packages

* ``DIB_OPENHPC_DELETE_REPO`` Set to ``y`` or ``Y`` to delete the repo after building the image.
  Default is ``n``
