output "aws_app_ip" {
  value = module.myapp-server.instance.public_ip
}
