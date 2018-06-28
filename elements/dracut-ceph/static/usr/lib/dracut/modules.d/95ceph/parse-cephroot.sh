#!/bin/sh
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh
#
# root=ceph://[user:pass@]<server>/<folder>
#
# This syntax can come from DHCP root-path as well.
#
# If a username or password are not specified as part of the root, then they
# will be pulled from cephuser and cephpass on the kernel command line,
# respectively.
#

type getarg >/dev/null 2>&1 || . /lib/dracut-lib.sh
. /lib/ceph-lib.sh

# This script is sourced, so root should be set. But let's be paranoid
[ -z "$root" ] && root=$(getarg root=)

if [ -z "$netroot" ]; then
    for netroot in $(getargs netroot=); do
        [ "${netroot%%:*}" = "ceph" ] && break
    done
    [ "${netroot%%:*}" = "ceph" ] || unset netroot
fi

# Root takes precedence over netroot
if [ "${root%%:*}" = "ceph" ] ; then
    if [ -n "$netroot" ] ; then
        warn "root takes precedence over netroot. Ignoring netroot"
    fi
    netroot=$root
    unset root
fi

# If it's not ceph we don't continue
[ "${netroot%%:*}" = "ceph" ] || return

# Check required arguments
ceph_to_var $netroot

# If we don't have a server, we need dhcp
if [ -z "$server" ] ; then
    DHCPORSERVER="1"
fi;

# Done, all good!
rootok=1

echo '[ -e $NEWROOT/proc ]' > $hookdir/initqueue/finished/cephroot.sh
