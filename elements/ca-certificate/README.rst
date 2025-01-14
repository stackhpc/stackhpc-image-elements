==============
ca-certificate
==============
Add custom CA certifacte to the trusted CA bundle and update it.

`DIB_CUSTOM_CA_CERTIFICATE_URL`: URL to the custom CA certifacte
`DIB_CUSTOM_CA_CERTIFICATE_NAME`: The file name to use when saving the certifacte locally (optional)

If `DIB_CUSTOM_CA_CERTIFICATE_NAME` is not defined, the certifacte will be saved as `custom-ca`

For example:

  .. code-block::

   export DIB_CUSTOM_CA_CERTIFICATE_URL="https://www.example.org/custom.pem"
   export DIB_CUSTOM_CA_CERTIFICATE_NAME="my-cert.pem"
