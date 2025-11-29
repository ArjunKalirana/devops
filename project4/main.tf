provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "devops_ec2" {
  ami           = "ami-0dee22c13ea7a9a67" # Amazon Linux 2 (ap-south-1)
  instance_type = "t3.micro"             # FREE TIER
  key_name      = var.key_name

  tags = {
    Name = "devops-terraform-instance"
  }
}


output "public_ip" {
  value = aws_instance.devops_ec2.public_ip
}
