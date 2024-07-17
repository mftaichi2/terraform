 provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "terraform_instance" {
  ami = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  availability_zone = "us-east-1d"
  subnet_id = "subnet-0a5c8b12faf6cfb03"
  key_name = "opentofu"
  vpc_security_group_ids = ["sg-0773f35fcaf8653e4"]
  tags = {
    Name = "Terraform_Instance"
  }
}