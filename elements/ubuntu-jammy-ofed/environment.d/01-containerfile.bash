# note eval to expand the result of the get function
if [[ -z "${DIB_CONTAINERFILE_DOCKERFILE-}" ]]
then
    eval declare -A image_elements=($(get_image_element_array))
    element_path=${image_elements["ubuntu-jammy-ofed"]}
    export DIB_CONTAINERFILE_DOCKERFILE=$element_path/containerfiles/ubuntu-jammy-ofed-23.04
fi