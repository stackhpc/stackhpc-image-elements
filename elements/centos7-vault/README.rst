=============
centos7-vault
=============

Based on the standard centos7 element with minimal changes.

Use previous (but still available) versions of CentOS 7 cloud images as
the baseline for built disk images.

DIB_CENTOS7_VERSION:
  :Required: No
  :Default: 7.7
  :Description: Set a version, from 7.1 to 7.7 (inclusive) and the last-known
                public locations for package repos and cloud images will be used.

DIB_CENTOS7_MIRROR_VERSION:
  :Required: No
  :Default: 7.7.1908
  :Description: Set a fully-qualified version for a build of CentOS.
                A sensible last-known default value is set according to 
                ``DIB_CENTOS7_VERSION``.  This value also overwrites
                ``$releasever`` in a standard ``CentOS-Base`` yum repo.

DIB_CENTOS7_CLOUDIMAGE_VERSION:
  :Required: No
  :Default: GenericCloud-1907
  :Description: Set a fully-qualified version for a cloud image build.
                A sensible last-known default value is set according to 
                ``DIB_CENTOS7_VERSION``.

DIB_CENTOS7_MIRROR:
  :Required: No
  :Default: ``http://vault.centos.org``
  :Description: A default value is the CentOS vault repo URL.
                It must have a subdirectory which is the CentOS mirror version.
  :Example: ``DIB_DISTRIBUTION_MIRROR=http://mirror.local/centos``

DIB_CENTOS7_CLOUDIMAGE_REPO:
  :Required: No
  :Default: ``https://cloud.centos.org/centos/7/images``
  :Description: URL to a folder for fetching the cloud image.

DIB_CENTOS7_CLOUDIMAGE:
  :Required: No
  :Default: ``https://cloud.centos.org/centos/7/images/CentOS-7-x86_64-$DIB_CENTOS7_CLOUDIMAGE_VERSION.qcow2.xz``
  :Description: Set the desired fully-qualified URL to fetch the cloud image from.
  :Example: ``DIB_CLOUD_IMAGES=/path/to/my/centos/7/CentOS-7-x86_64-GenericCloud.qcow2.xz``
