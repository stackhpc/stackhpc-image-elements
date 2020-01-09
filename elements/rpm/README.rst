===
rpm
===
So you found a random RPM on the interwebs and now want to install it into
your cloud image, panic not, this element's for you.

* ``DIB_RPMS``: A whitespace separated list of rpms to install. This is a required parameter.
  For example:

  .. code-block::

   export DIB_RPMS="https://example.org/first.rpm https://example.org/second.rpm"
