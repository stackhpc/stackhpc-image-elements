===================
centos-linkup-extra
===================
Some NICs are a bit slow to start (in particular, 10GBase-T NICs), so
provide for extra time before ifup gives up waiting during boot.

* ``DIB_CENTOS_LINKUP_EXTRA_SECS`` LINKDELAY value to set in /etc/sysconfig/network.
  This is the time to wait after starting an interface before giving up on detecting link up.
  The default value is ``10``.
