data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["rj_apache_test"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["663770316195"] # Rodney Terraform Test
}

resource "aws_instance" "blog" {
  ami           = data.aws_ami.app_ami.id
  instance_type = var.instance_type

  tags = {
    Name = "HelloWorld"
  }
}
