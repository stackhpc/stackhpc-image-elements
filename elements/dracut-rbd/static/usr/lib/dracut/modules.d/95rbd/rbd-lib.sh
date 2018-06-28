#!/bin/sh

# ceph_to_var RBDROOT
# use RBDROOT to set $server, $pool, $name and $options.
# NETIF is used to get information from DHCP options, if needed.

rbd_to_var() {
    local cephuser; local cephpass; local path
    # Check required arguments
    server=${1##rbd://}
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

    pool=${path%/*}
    name=${path#*/}

    if [ ! "$cephuser" -o ! "$cephpass" ]; then
	die "For RBD support you need to specify a cephuser and cephpass either in the cephuser and cephpass commandline parameters or in the root= CEPH URL."
    fi
    options="name=$cephuser,secret=$cephpass"
}
