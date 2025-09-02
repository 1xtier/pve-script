resource "proxmox_lxc" "lxc" {
    count = length(var.lxc)    
    ostemplate = "${var.images_lxc}"
    password = "${var.lxc_auth.pass}"
    target_node = var.lxc[count.index].nodes
    unprivileged = var.lxc[count.index].unprivileged
    ssh_public_keys = <<-EOT
      ${var.lxc_auth.ssh_keys}
    EOT
    hostname = var.lxc[count.index].name
    memory = var.lxc[count.index].mem
    cores = var.lxc[count.index].cpus
    nameserver = var.lxc[count.index].dns

    rootfs {
        storage = var.lxc[count.index].pool
        size    = var.lxc[count.index].disks
    }
    network {
        name = var.lxc[count.index].name
        bridge = var.lxc[count.index].eth
        ip = var.lxc[count.index].ip
        ip6 = "auto"
    }
}
