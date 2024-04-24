qm importdisk 200 lunar-server-cloudimg-amd64-disk-kvm.img local-lvm

qm set 200 --scsihw virtio-scsi-pci --scsi0 local-lvm:vm-200-disk-0

qm set 200 --ide2 local-lvm:cloudinit

qm set 200 --boot c --bootdisk scsi0

qm set 200 --serial0 socket --vga serial0