===========
nvidia-vgpu
===========

* Configures client token for license server
* Sets license type to VGPU

`DIB_NVIDIA_VGPU_CLIENT_TOKEN`: Contents of license file. This can be exported from the
license server.

For example:

  .. code-block::

   export DIB_NVIDIA_VGPU_CLIENT_TOKEN="{{ lookup('file', 'path/to/token/downloaded/from/license/server') }}'
