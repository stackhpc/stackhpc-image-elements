#!/bin/bash
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh

check() {
    # If our prerequisites are not met, fail anyways.
    require_binaries mount.ceph || return 1

    [[ $hostonly ]] || [[ $mount_needs ]] && {
        for fs in ${host_fs_types[@]}; do
            [[ "$fs" == "ceph" ]] && return 0
        done
        return 255
    }

    return 0
}

depends() {
    # We depend on network modules being loaded
    echo network
}

installkernel() {
    instmods ceph
}

install() {
    local _i
    inst_multiple -o mount.ceph

    inst_hook cmdline 90 "$moddir/parse-cephroot.sh"
    inst "$moddir/cephroot.sh" "/sbin/cephroot"
    inst "$moddir/ceph-lib.sh" "/lib/ceph-lib.sh"
    dracut_need_initqueue
}
