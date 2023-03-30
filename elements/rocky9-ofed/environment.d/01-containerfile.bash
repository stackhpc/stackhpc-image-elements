# note eval to expand the result of the get function
if [[ -z "${DIB_CONTAINERFILE_DOCKERFILE-}" ]]
then
    eval declare -A image_elements=($(get_image_element_array))
    element_path=${image_elements["rocky9-ofed"]}
    export DIB_CONTAINERFILE_DOCKERFILE=$element_path/containerfiles/rocky-9.1-ofed-5.8
fi

