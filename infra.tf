// s-1vcpu-3gb 512mb

resource "digitalocean_droplet" "hadoop" {
  ssh_keys = ["${var.ssh_keys}"]
  name = "hadoop"
  image = "ubuntu-17-04-x64"
  region = "sfo2"
  size   = "512mb"
  private_networking = true
  resize_disk = false
  provisioner "remote-exec" {
    scripts = [
      "prov-java.sh",
      "prov-hadoop.sh",
    ]
  }
}

output "hadoop" {
  value = "root@${digitalocean_droplet.hadoop.ipv4_address}"
}

