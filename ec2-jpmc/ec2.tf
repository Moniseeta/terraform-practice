resource "aws_instance" "example_server" {
  ami           = "ami-074be47313f84fa38"        # change the AMI id
  instance_type = "t2.micro"

  tags = {
    Name = "jpmc-ec2"
  }
}