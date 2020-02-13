provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "kaeptn-eichhorn" {
  ami = "ami-13b8337c"
  instance_type = "t2.micro"

}

resource "aws_s3_bucket" "example" {
  bucket ="kaeptn-eichhorn"
  depends_on = ["aws_instance.example"]
}

resource "aws_instance" "example" {
  ami = "ami-13b8337c"
  instance_type = "t2.micro"
  depends_on = [aws_s3_bucket.example]
}

