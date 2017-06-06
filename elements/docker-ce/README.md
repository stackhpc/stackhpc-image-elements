Docker CE element
=================

This directory contains a `[diskimage-builder](https://github.com/openstack/diskimage-builder)`
element to build an image which contains docker CE (Community Edition).

The following environment variables may be set to configure the element:

* `DIB_DOCKER_REPO_URL`: URL of Docker package repository configuration file.
* `DIB_DOCKER_ENABLED_REPOS`: Space-separated list of repositories to enable.
