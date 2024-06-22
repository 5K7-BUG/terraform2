provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "web-server" {
  ami = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"

  tags = {
    Name: "docker"
  }
}
output "ec2-intance-ip" {
  value = aws_instance.web-server.public_ip

}