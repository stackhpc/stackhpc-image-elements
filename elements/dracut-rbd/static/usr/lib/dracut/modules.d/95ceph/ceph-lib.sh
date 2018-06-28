#!/bin/sh
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh

# ceph_to_var CEPHROOT
# use CEPHROOT to set $server, $path, and $options.
# NETIF is used to get information from DHCP options, if needed.

type getarg >/dev/null 2>&1 || . /lib/dracut-lib.sh

ceph_to_var() {
    local cephuser; local cephpass
    # Check required arguments
    server=${1##ceph://}
    cephuser=${server%@*}
    cephpass=${cephuser#*:}
    if [ "$cephpass" != "$cephuser" ]; then
	cephuser=${cephuser%:*}
    else
	cephpass=$(getarg cephpass)
    fi
    if [ "$cephuser" != "$server" ]; then
	server="${server#*@}"
    else
	cephuser=$(getarg cephuser)
    fi

    path=${server#*/}
    server=${server%:/*}

    if [ ! "$cephuser" -o ! "$cephpass" ]; then
	die "For CEPH support you need to specify a cephuser and cephpass either in the cephuser and cephpass commandline parameters or in the root= CEPH URL."
    fi
    options="name=$cephuser,secret=$cephpass,noatime,nodiratime"
}
