=========
etc-hosts
=========
Appends text to /etc/hosts.

`DIB_ETC_HOSTS_EXTRA`: Lines to add to /etc/hosts

For example:

  .. code-block::

   export DIB_ETC_HOSTS_EXTRA="192.168.20.1 compute-host-01"

Or:

   export DIB_ETC_HOSTS_EXTRA=`cat ./my-hosts`