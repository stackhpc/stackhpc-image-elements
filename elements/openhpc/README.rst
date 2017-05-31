=======
openhpc
=======
Install OpenHPC RPMs from a repo using yum.

`DIB_OPENHPC_GRPLIST` Define a space-separated list of package groups to install.
  Default is:

  `ohpc-base-compute ohpc-slurm-client "InfiniBand Support"`

`DIB_OPENHPC_PKGLIST` Define a space-separated list of packages to install.
  Default is:

  `lmod-ohpc mrsh-ohpc lustre-client-ohpc`

`DIB_OPENHPC_DELETE_REPO` Set to 'y' or 'Y' to delete the repo after building the image.
