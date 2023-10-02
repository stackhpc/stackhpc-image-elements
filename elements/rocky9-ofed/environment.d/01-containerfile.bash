# note eval to expand the result of the get function
if [[ -z "${DIB_CONTAINERFILE_DOCKERFILE-}" ]]
then
    path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
    path="$( dirname $path)"
    export DIB_CONTAINERFILE_DOCKERFILE="$path/containerfiles/rocky-9-ofed"
    sed -i 's/DIB_MLNX_OFED_VERSION/'"$DIB_MLNX_OFED_VERSION"'/g' $DIB_CONTAINERFILE_DOCKERFILE || true
    sed -i 's/DIB_MLNX_OFED_INSTALL_ARGS/'"${DIB_MLNX_OFED_INSTALL_ARGS:---hypervisor}"'/g' $DIB_CONTAINERFILE_DOCKERFILE || true
fi