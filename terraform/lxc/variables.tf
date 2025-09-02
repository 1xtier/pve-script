variable "images_lxc" {
    type = string
    default = "local:vztmpl/almalinux-9-default_20240911_amd64.tar.xz"
}
variable "lxc_auth" {
    type = object({
      ssh_keys = string,
      pass = string
  })
}
variable "lxc" {
  description = "Parametrs lxc"
  type = list(object({
    nodes = string,
    name = string,
    cpus = number,
    mem = number,
    pool = string,
    disks = string,
    eth = string, 
    ip = string,
    unprivileged = bool
    dns = number
    })
  )
}
