resource "aws_ebs_volume" "example" {
  availability_zone = "ap-southeast-1a"
  size              = 40

  tags = {
    Name = "HelloWorld"
  }
}
