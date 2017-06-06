==============
hpc-hypervisor
==============
Configure an overcloud compute node image for HPC hypervisor optimisations.

* ``DIB_HPC_HYPERVISOR_ISOLCPUS`` Value to pass to the kernel parameter ``isolcpus``.
  The CPU cores that should not be touched by the hypervisor scheduler and left available
  to guest VMs.  The default value is ``4-23``.
