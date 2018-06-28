#!/bin/sh
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh

type getarg >/dev/null 2>&1 || . /lib/dracut-lib.sh
. /lib/ceph-lib.sh

[ "$#" = 3 ] || exit 1

# root is in the form root=ceph://user:pass@[server]:/[folder] either from
# cmdline or dhcp root-path
netif="$1"
root="$2"
NEWROOT="$3"

ceph_to_var $root
echo server: $server
echo path: $path
echo options: $options

mount.ceph $server:/$path $NEWROOT -o $options && { [ -e /dev/root ] || ln -s null /dev/root ; }

# inject new exit_if_exists
echo 'settle_exit_if_exists="--exit-if-exists=/dev/root"; rm -f -- "$job"' > $hookdir/initqueue/ceph.sh
# force udevsettle to break
> $hookdir/initqueue/work
