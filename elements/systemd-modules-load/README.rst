====================
Systemd Modules Load
====================

Adds configuration for the `systemd-modules-load
<https://www.freedesktop.org/software/systemd/man/modules-load.d.html>`_
service, which loads kernel modules at boot based on configuration in
/etc/modules-load.d/.

Environment Variables
=====================

* ``DIB_SYSTEMD_MODULES_LOAD_FILE`` is the name of the file that will be added
  in ``/etc/modules-load.d/``. The default value is dib.conf.
* ``DIB_SYSTEMD_MODULES_LOAD_CONTENT`` is the content to write to
  ``DIB_SYSTEMD_MODULES_LOAD_FILE``. This variable is required.
