/*
data "aws_availability_zones" "available" {}
*/



resource "aws_instance" "test" {
  ami             = var.amiid
  instance_type   = var.machinetype
  #subnet_id = aws_subnet.dev-public-1.id
  key_name        = var.keyname
  security_groups = ["default"]
  tags            = {
    Name = "nk123"
  }
}

resource "aws_ebs_volume" "ebs2" {
  availability_zone = "us-west-2a"
  size              = 2
  tags = {
    "Name" = "testvol"
  }
}

resource "aws_volume_attachment" "attach2" {
  device_name = "/dev/sdg"
  volume_id   = aws_ebs_volume.ebs2.id
    instance_id = aws_instance.test.id
}




/*
resource "aws_ebs_volume" "ebs2" {
  availability_zone = "us-west-2a"
  size              = 1
}

resource "aws_volume_attachment" "attach2" {
  device_name = "/dev/sdi"
   instance_id = data.aws_instance.new.id
  volume_id   = aws_ebs_volume.ebs2.id
}
*/