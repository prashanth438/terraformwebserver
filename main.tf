resource "aws_instance" "web_server" {
  ami = var.ami

  instance_type = var.instance_type
  key_name      = var.key_name


  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("D:/DevOPs/alphanew.pem")
    host        = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install nginx -y"
    ]

  }
}