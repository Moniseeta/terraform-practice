terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


resource "aws_instance" "webserver" {
  ami           = "ami-074be47313f84fa38"
  instance_type = "t2.micro"

tags = {
    Name = "rps-web"
}

  provisioner "local-exec" {
    command = "echo ${aws_instance.webserver.public_ip} >> ips.txt"
  }
}