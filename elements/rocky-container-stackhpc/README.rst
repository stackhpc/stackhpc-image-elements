========================
rocky-container-stackhpc
========================
Custom containerfiles for usage with ``rocky-container`` builds.

Usage:
Set ``DIB_CONTAINERFILE_DOCKERFILE`` environment variable to custom
Containerfile path provided by this role, e.g.:
DIB_CONTAINERFILE_DOCKERFILE: "/opt/kayobe/src/stackhpc-image-elements/elements/rocky-container-stackhpc/containerfiles/9-stackhpc"

Pass ``ROCKY_USE_CUSTOM_DNF_MIRRORS=true`` as a build-arg to disable
upstream Rocky repository mirrors.

``ROCKY_CUSTOM_DNF_MIRROR_URLS`` is a comma-delimited list of repository URLs
to build an image from, and should also be passed as a build-arg.
``ROCKY_CUSTOM_DNF_MIRROR_URLS`` will be removed from the final image.

Use ``DIB_CONTAINERFILE_BUILDOPTS`` to pass through build args to the container
engine:

.. code-block:: yaml
    DIB_CONTAINERFILE_BUILDOPTS: >-
    --build-arg=ROCKY_USE_CUSTOM_DNF_MIRRORS=true
    --build-arg=ROCKY_CUSTOM_DNF_MIRROR_URLS=http://localhost/rocky/9/AppStream/x86_64/os/,http://localhost/rocky/9/BaseOS/x86_64/os/

Set ``DIB_ROCKY_CONTAINER_STACKHPC_RESTORE_UPSTREAM_REPOFILES=true`` to restore the
upstream Rocky repository mirror configuration in the final image. 