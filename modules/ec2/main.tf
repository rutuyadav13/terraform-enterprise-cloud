resource "aws_instance" "this" {
  ami           = "ami-0b6d9d3d33ba97d99" # Ubuntu AMI (ap-south-1)
  instance_type = var.instance_type

  tags = {
    Name = "enterprise-ec2-${var.env}"
    Env  = var.env
  }
}