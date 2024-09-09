sgname = "vpc-dev-sg"

name = "pctest"

amiid = "ami-03b039a920e4e8966" #03b039a920e4e8966  0a38c1c38a15fed74

machinetype = "t2.micro"

keyname = "nishal"

cidr = ["0.0.0.0/0"]

volumeid = aws_ebs_volume.ebs2

instanceid = aws_instance.test

domain_name = "thecloud4all.online"

record_name = "www"
#rsname = nishal