=======
sudoers
=======

This element allows for injecting sudoers configuration into an image.

Environment Variables
---------------------

DIB_SUDOERS_FILENAME
  :Required: No
  :Default: dib
  :Description: Name of the sudoers file in /etc/sudoers.d/

DIB_SUDOERS_CONFIG
  :Required: Yes
  :Default: None
  :Description: Sudoers configuration to inject
