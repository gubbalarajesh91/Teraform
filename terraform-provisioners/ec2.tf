resource "aws_instance" "web" {
  ami = "ami-090252cbe067a9e58"
  vpc_security_group_ids = ["sg-064e5048c7eb6590f"]
  instance_type = "t3.micro"

    provisioner "local-exec" {
    command = "echo ${self.private_ip} > private_ips.txt"
    }
    # provisioner "local-exec" {
    # command = "ansible-playbook -i private_ips.txt web.yaml"
    # }

    connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo dnf install ansible -y",
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx ",
    ]
  }

  }
