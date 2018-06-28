#!/bin/sh

type getarg >/dev/null 2>&1 || . /lib/dracut-lib.sh

[ "$#" = 3 ] || exit 1

# root is in the form root=http://[user]:[pass]@server/folder 
netif="$1"
root="$2"
NEWROOT="$3"

echo URL: $root

mount -t tmpfs -o size=10g,nodiratime,noatime tmpfs $NEWROOT || error
curl -s $root | pigz -d | tar -x -f - -C $NEWROOT || error

# inject new exit_if_exists
echo 'settle_exit_if_exists="--exit-if-exists=/dev/root"; rm -f -- "$job"' > $hookdir/initqueue/http.sh
# force udevsettle to break
> $hookdir/initqueue/work
