=====================
ipa-extra-hardware-hp
=====================
Installs HP specific software required for cardiff 
(`hardware <https://pypi.org/project/hardware/>`_) benchmarks

* ``DIB_IPA_EXTRA_HARDWARE_CONREP_RPM``: URL of an RPM file that provides the ``conrep`` utility.
  See `<ddr-timings https://github.com/stackhpc/ddr-timings>`_.
  For example:

  .. code-block::

   export DIB_IPA_EXTRA_HARDWARE_CONREP_RPM="https://downloads.hpe.com/pub/softlib2/software1/pubsw-linux/p1201555626/v164819/rhel7/x86_64/hp-scripting-tools-11.40-9.rhel7.x86_64.rpm"
