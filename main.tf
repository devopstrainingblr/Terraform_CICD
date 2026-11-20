resource "aws_instance" "ec2_server" {
  ami               = "ami-01a00762f46d584a1"
  instance_type     = "t3.micro"
  availability_zone = "ap-south-1a"
  key_name          = "AmazonWebServices"

  tags = {
    Name = "GitHub_Actions_Server"
  }
}

resource "aws_s3_bucket" "dockerimages" {
  bucket = "data-dockerimages-95843kjfkdfds"
}