resource "aws_instance" "webserver" {
  ami           = "ami-074be47313f84fa38"
  instance_type = "t2.micro"

tags = {
    Name = "rps2-web"
}

  provisioner "local-exec" {
    command = "the server's ipaddress is  ${self.private_ip} > ips.txt"
on_failure = continue
  }

 provisioner "local-exec" {
    when = destroy
    command = "rm ips.txt"
}
}