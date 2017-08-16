========================================
Ironic Python Agent (IPA) Extra Hardware
========================================

This element has been designed to work with the ``ironic-agent`` element, and
adds the `hardware <https://pypi.python.org/pypi/hardware>`_ python
package to the Ironic Python Agent (IPA) ramdisk. It also installs several
package dependencies of the ``hardware`` module.

The ``hardware`` package provides improved hardware introspection capabilities
and supports benchmarking. This functionality may be enabled by adding the
``extra-hardware`` collector in the ``[DEFAULT] inspection_collectors`` option
or the ``ipa-inspection-collectors`` kernel command line argument.

The following environment variables may be set to configure the element:

* ``DIB_IPA_HARDWARE_VERSION`` the version of the ``hardware`` package to
  install. If unset, the latest version will be installed.
* ``DIB_IPA_EXTRA_HARDWARE_PACKAGES`` a space-separated list of additional
  system packages to install.
