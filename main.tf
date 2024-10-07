provider "aws" {
  region = "ap-south-1"  
}

resource "aws_instance" "test" {
  ami           = "ami-078264b8ba71bc45e" 
  instance_type = "t2.micro"              

  tags = {
    Name = "Terraform-EC2"
  }

}

output "instance_ip" {
  value = aws_instance.example.public_ip
}
