resource "aws_instance" "web_server" {
  ami = var.ami

  instance_type = var.instance_type
  key_name      = var.key_name


  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = var.private_key_path
    host        = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      while [ ! -f /var/lib/cloud/instance/boot-finished ]; do
      echo "Waiting for cloud-init to finish..."
      "sudo apt-get update",
      "sudo apt-get install nginx -y"
    ]

  }
}
