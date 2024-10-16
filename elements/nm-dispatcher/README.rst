=============
nm-dispatcher
=============
Adds a custom file to NetworkManager dispatcher.d

`DIB_NM_DISPATCHER_FILENAME`: File to add under /etc/NetworkManager/dispatcher.d

For example:

  .. code-block::

   export DIB_NM_DISPATCHER_FILENAME="10-echo"
   export DIB_NM_DISPATCHER_CONTENT="echo 'hello world!'"

Or:

   export DIB_NM_DISPATCHER_CONTENT=`cat ./custom-file`
