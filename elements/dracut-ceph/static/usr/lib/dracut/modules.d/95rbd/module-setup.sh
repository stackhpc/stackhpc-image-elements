#!/bin/bash

check() {
    return 0
}

depends() {
    # We depend on network modules being loaded
    echo network
}

installkernel() {
    instmods rbd rootfs-block
}

install() {
    inst_hook cmdline 90 "$moddir/parse-rbdroot.sh"
    inst "$moddir/rbdroot.sh" "/sbin/rbdroot"
    inst "$moddir/rbd-lib.sh" "/lib/rbd-lib.sh"
    dracut_need_initqueue
}
