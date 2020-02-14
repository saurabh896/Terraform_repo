resource "aws_instance" "example" {
  count = 10
  ami = "ami-40d28157"
  instance_type = "t2.micro"
}
