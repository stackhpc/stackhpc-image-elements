export DISTRO_NAME=centos7
export DIB_RELEASE=7

# Useful for elements that work with fedora (dnf) & centos
export YUM=${YUM:-yum}

# At the time of writing CentOS 7.7 is still current and the vault content is incomplete.
export DIB_CENTOS7_VERSION=${DIB_CENTOS7_VERSION:-"7.6"}
case "$DIB_CENTOS7_VERSION" in
    7.9)
        # At the time of writing CentOS 7.9 is still current and the vault content is incomplete.
        DIB_CENTOS7_MIRROR_VERSION=${DIB_CENTOS7_MIRROR_VERSION:-"7.9.2009"}
        DIB_CENTOS7_CLOUDIMAGE_VERSION=${DIB_CENTOS7_CLOUDIMAGE_VERSION:-"GenericCloud-2009"}
        # The CentOS 7.9 cloud image appears to be have been published without the .qcow.xz
        DIB_CENTOS7_CLOUDIMAGE_EXT="qcow2c"
        ;;
    7.8)
        DIB_CENTOS7_MIRROR_VERSION=${DIB_CENTOS7_MIRROR_VERSION:-"7.8.2003"}
        DIB_CENTOS7_CLOUDIMAGE_VERSION=${DIB_CENTOS7_CLOUDIMAGE_VERSION:-"GenericCloud-2003"}
        DIB_CENTOS7_CLOUDIMAGE_EXT="qcow2.xz"
        ;;
    7.7)
        DIB_CENTOS7_MIRROR_VERSION=${DIB_CENTOS7_MIRROR_VERSION:-"7.7.1908"}
        DIB_CENTOS7_CLOUDIMAGE_VERSION=${DIB_CENTOS7_CLOUDIMAGE_VERSION:-"GenericCloud-1907"}
        DIB_CENTOS7_CLOUDIMAGE_EXT="qcow2.xz"
        ;;
    7.6)
        DIB_CENTOS7_MIRROR_VERSION=${DIB_CENTOS7_MIRROR_VERSION:-"7.6.1810"}
        DIB_CENTOS7_CLOUDIMAGE_VERSION=${DIB_CENTOS7_CLOUDIMAGE_VERSION:-"GenericCloud-1811"}
        DIB_CENTOS7_CLOUDIMAGE_EXT="qcow2.xz"
        ;;
    7.5)
        DIB_CENTOS7_MIRROR_VERSION=${DIB_CENTOS7_MIRROR_VERSION:-"7.5.1804"}
        DIB_CENTOS7_CLOUDIMAGE_VERSION=${DIB_CENTOS7_CLOUDIMAGE_VERSION:-"GenericCloud-1805"}
        DIB_CENTOS7_CLOUDIMAGE_EXT="qcow2.xz"
        ;;
    7.4)
        DIB_CENTOS7_MIRROR_VERSION=${DIB_CENTOS7_MIRROR_VERSION:-"7.4.1708"}
        DIB_CENTOS7_CLOUDIMAGE_VERSION=${DIB_CENTOS7_CLOUDIMAGE_VERSION:-"GenericCloud-1708"}
        DIB_CENTOS7_CLOUDIMAGE_EXT="qcow2.xz"
        ;;
    7.3)
        DIB_CENTOS7_MIRROR_VERSION=${DIB_CENTOS7_MIRROR_VERSION:-"7.3.1611"}
        DIB_CENTOS7_CLOUDIMAGE_VERSION=${DIB_CENTOS7_CLOUDIMAGE_VERSION:-"GenericCloud-1611"}
        DIB_CENTOS7_CLOUDIMAGE_EXT="qcow2.xz"
        ;;
    7.2)
        DIB_CENTOS7_MIRROR_VERSION=${DIB_CENTOS7_MIRROR_VERSION:-"7.2.1511"}
        DIB_CENTOS7_CLOUDIMAGE_VERSION=${DIB_CENTOS7_CLOUDIMAGE_VERSION:-"GenericCloud-1511"}
        DIB_CENTOS7_CLOUDIMAGE_EXT="qcow2.xz"
        ;;
    7.1)
        DIB_CENTOS7_MIRROR_VERSION=${DIB_CENTOS7_MIRROR_VERSION:-"7.1.1503"}
        DIB_CENTOS7_CLOUDIMAGE_VERSION=${DIB_CENTOS7_CLOUDIMAGE_VERSION:-"GenericCloud-1503"}
        DIB_CENTOS7_CLOUDIMAGE_EXT="qcow2.xz"
        ;;
    *)
        echo "CentOS 7 version \"$DIB_CENTOS7_VERSION\" is not recognised"
        exit -1
        ;;
esac
export DIB_CENTOS7_MIRROR_VERSION DIB_CENTOS7_CLOUDIMAGE_VERSION

[ -n "$ARCH" ]

if [[ "amd64 x86_64" =~ "$ARCH" ]]; then
    ARCH="x86_64"
    export DIB_CENTOS7_CLOUDIMAGE_REPO=${DIB_CENTOS7_CLOUDIMAGE_REPO:-"https://cloud.centos.org/centos/7/images"}
elif [[ "arm64 aarch64" =~ "$ARCH" ]]; then
    ARCH="aarch64"
    export DIB_CENTOS7_CLOUDIMAGE_REPO=${DIB_CENTOS7_CLOUDIMAGE_REPO:-http://cloud.centos.org/altarch/7/images/aarch64}
elif [[ "ppc64le" =~ "$ARCH" ]]; then
    export DIB_CENTOS7_CLOUDIMAGE_REPO=${DIB_CENTOS7_CLOUDIMAGE_REPO:-http://cloud.centos.org/altarch/7/images/ppc64le}
else
    echo 'centos7-vault root element only supports the x86_64, aarch64 and ppc64le values for $ARCH'
    exit -2
fi

export DIB_CENTOS7_MIRROR=${DIB_CENTOS7_MIRROR:-"http://vault.centos.org"}
export DIB_CENTOS7_CLOUDIMAGE_FILE=${DIB_CENTOS7_CLOUDIMAGE_FILE:-CentOS-7-${ARCH}-${DIB_CENTOS7_CLOUDIMAGE_VERSION}.${DIB_CENTOS7_CLOUDIMAGE_EXT}}
export DIB_CENTOS7_CLOUDIMAGE=${DIB_CENTOS7_CLOUDIMAGE:-${DIB_CENTOS7_CLOUDIMAGE_REPO}/${DIB_CENTOS7_CLOUDIMAGE_FILE}}
