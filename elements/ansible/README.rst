=======
ansible
=======
Runs ansible playbooks late in the cleanup.d phase so that the image has been mostly configured. Requires systemd-nspawn.

* ``DIB_ANSIBLE_<REF>_SRC``: Git repository pointing to your ansible code.
* ``DIB_ANSIBLE_<REF>_BRANCH``: (Optional) Branch of repository to checkout. Defaults to ``master``.
* ``DIB_ANSIBLE_<REF>_OPTS``: (Optional) Extra command line arguments to pass to ansible-pull.
* ``DIB_ANSIBLE_<REF>_VAULT_PASSWORD``: (Optional) Vault password.
* ``DIB_ANSIBLE_<REF>_SUBDIR``: (Optional) Subdirectory in the git checkout where the ansible code lives.
* | ``DIB_ANSIBLE_<REF>_PLAYBOOKS``: (Optional) Playbooks to run, relative to ``DIB_ANSIBLE_<REF>_SUBDIR``
  | if set. Defaults to ``main.yml``. Multiple values must be separated by a space.
* ``DIB_ANSIBLE_PKG``: (Optional) Globally controls the version of ansible to use.

Where ``<REF>`` can be an arbitrary string, the function of which is to tie the
variables together e.g ``DIB_ANSIBLE_EXAMPLE_SRC`` and ``DIB_ANSIBLE_EXAMPLE_OPTS`` both
affect the same ansible-pull invocation. You can use as many different references
as you like.

Example
-------

.. code-block::

    export DIB_ANSIBLE_EXAMPLE_SRC=https://github.com/jovial/ansible-pull-hello-world.git
    export DIB_ANSIBLE_EXAMPLE_BRANCH=test-branch
    export DIB_ANSIBLE_EXAMPLE_OPTS="-i hosts -e buildgroup=computes"
    export DIB_ANSIBLE_EXAMPLE_VAULT_PASSWORD="topsecret"
    export DIB_ANSIBLE_EXAMPLE_SUBDIR=ansible
    export DIB_ANSIBLE_EXAMPLE_PLAYBOOKS="main.yml build.yml"
    export DIB_ANSIBLE_PKG='ansible<2.9.0'
