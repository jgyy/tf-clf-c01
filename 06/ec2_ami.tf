resource "aws_ami" "example" {
  depends_on          = [aws_ebs_snapshot.example_snapshot]
  name                = "terraform-example"
  virtualization_type = "hvm"
  root_device_name    = "/dev/xvda"

  ebs_block_device {
    device_name = "/dev/xvda"
    snapshot_id = aws_ebs_snapshot.example_snapshot.id
    volume_size = 40
  }
}
