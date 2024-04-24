resource "proxmox_vm_qemu" "cloudinit-k3s-master" {
  target_node = "proxmox"
  desc = "Cloud init Ubuntu"
  count = "1"
  onboot = true

  # The template name to clone this vVMm from
  clone = "ubuntu-cloud"

  # Activate qemu agent for this VM
  agent = 0

  os_type = "cloud-init"
  cores = 2
  sockets = 1
  numa = true
  cpu = "host"
  memory = 2048
  name = "k3sMaster"
  

  #cloudinit_cdrom_storage = "local-lvm"
  scsihw = "virtio-scsi-pci"
  bootdisk = "scsi0"
}

resource "proxmox_vm_qemu" "cloudinit-k3s-mworker" {
  target_node = "proxmox"
  desc = "Cloud init Ubuntu"
  count = "1"
  onboot = true


  # The template name to clone this vVMm from
  clone = "ubuntu-cloud"

  # Activate qemu agent for this VM
  agent = 0

  os_type = "cloud-init"
  cores = 2
  sockets = 1
  numa = true
  cpu = "host"
  memory = 2048
  name = "k3sWorker"
  

  #cloudinit_cdrom_storage = "local-lvm"
  scsihw = "virtio-scsi-pci"
  bootdisk = "scsi0"
}