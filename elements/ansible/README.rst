=======
ansible
=======
Runs ansible pull late in the finalise.d phase so that the image has been mostly configured.

* ``DIB_ANSIBLE_<REF>_SRC``: Git repository pointing to your ansible code.
* ``DIB_ANSIBLE_<REF>_OPTS``: (Optional) Extra command line arguments to pass to ansible-pull
* ``DIB_ANSIBLE_PKG``: (Optional) Global controls the version of ansible to use.

Where ``<REF>`` can be an arbitrary string. The function of which is to tie the
variables together e.g DIB_ANSIBLE_EXAMPLE_SRC and DIB_ANSIBLE_EXAMPLE_OPTS both
affect the same ansible-pull invocation. You can use as many different references
as you like.

Example
-------

.. code-block::

    export DIB_ANSIBLE_EXAMPLE_SRC=https://github.com/jovial/ansible-pull-hello-world.git
    export DIB_ANSIBLE_EXAMPLE_OPTS="-i hosts playbook.yml"
    export DIB_ANSIBLE_PKG='ansible<2.9.0'
