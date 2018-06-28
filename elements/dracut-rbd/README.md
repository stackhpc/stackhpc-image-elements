This is an experimental module to add a dracut module to mount a Ceph rbd share

# Basic usage:

Specifying a rbd mount as the root device:

`root=rbd://name:secret@10.66.1.5:6789,10.66.1.5:6789:/POOL/rbd_image`
