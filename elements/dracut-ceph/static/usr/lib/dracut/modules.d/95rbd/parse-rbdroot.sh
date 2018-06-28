#!/bin/sh
# root=rbd://[user:pass@]<server>/<pool>/<rbd>
#
# This syntax can come from DHCP root-path as well.
#
# If a username or password are not specified as part of the root, then they
# will be pulled from cephuser and cephpass on the kernel command line,
# respectively.
#

# Root takes precedence over netroot
if [ "${root%%:*}" = "rbd" ] ; then
    if [ -n "$netroot" ] ; then
        warn "root takes precedence over netroot. Ignoring netroot"
    fi
    netroot=$root
    unset root
fi

# If it's not rbd we don't continue
[ "${netroot%%:*}" = "rbd" ] || return

# Check required arguments
rbd_to_vars $rbd

# If we don't have a server, we need dhcp
if [ -z "$server" ] ; then
    DHCPORSERVER="1"
fi;

# Done, all good!
rootok=1

echo '[ -e $NEWROOT/proc ]' > $hookdir/initqueue/finished/rbdroot.sh

