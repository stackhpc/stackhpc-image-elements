#!/bin/sh
#
# root=http://[user:pass@]<server>/<folder>
#
# This syntax can come from DHCP root-path as well.
#

type getarg >/dev/null 2>&1 || . /lib/dracut-lib.sh

# This script is sourced, so root should be set. But let's be paranoid
[ -z "$root" ] && root=$(getarg root=)

if [ -z "$netroot" ]; then
    for netroot in $(getargs netroot=); do
        [ "${netroot%%:*}" = "http" ] && break
    done
    [ "${netroot%%:*}" = "http" ] || unset netroot
fi

# Root takes precedence over netroot
if [ "${root%%:*}" = "http" ] ; then
    if [ -n "$netroot" ] ; then
        warn "root takes precedence over netroot. Ignoring netroot"
    fi
    netroot=$root
    unset root
fi

# If it's not http we don't continue
[ "${netroot%%:*}" = "http" ] || return

# Done, all good!
rootok=1

echo '[ -e $NEWROOT/proc ]' > $hookdir/initqueue/finished/httproot.sh
