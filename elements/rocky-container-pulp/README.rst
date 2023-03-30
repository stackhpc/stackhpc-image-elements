=======================
rocky custom containers
=======================

This makes use of the upstream dib element rocky-container.

To use these container files simple set something like this:::

 overcloud_dib_os_element: rocky-container

 overcloud_dib_env_vars_extra:
   DIB_CONTAINERFILE_DOCKERFILE: "{{ source_checkout_path }}/stackhpc-image-elements/elements/rocky-container-pulp/8.5-pulp

 overcloud_dib_git_elements_extra:
   - repo: https://github.com/stackhpc/stackhpc-image-elements
     local: "{{ source_checkout_path }}/stackhpc-image-elements"
     elements_path: elements
