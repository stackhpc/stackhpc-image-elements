#!/bin/bash

check() {
    # If our prerequisites are not met, fail anyways.
    require_binaries tar || return 1
    require_binaries pigz || return 1
    require_binaries curl || return 1
    return 0
}

depends() {
    # We depend on network modules being loaded
    echo network
}

install() {
    inst tar
    inst pigz
    inst curl
    
    inst_hook cmdline 90 "$moddir/parse-httproot.sh"
    inst "$moddir/httproot.sh" "/sbin/httproot"
    dracut_need_initqueue
}
