resource "aws_instance" "this" {
  ami           = "ami-0c2b8ca1dad447f8a" # Ubuntu AMI (ap-south-1)
  instance_type = var.instance_type

  tags = {
    Name = "enterprise-ec2-${var.env}"
    Env  = var.env
  }
}