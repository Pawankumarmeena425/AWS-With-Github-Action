provider "aws" {
  region = "us-west-2"  # specify the AWS region
  access_key = "YOUR_AWS_ACCESS_KEY"
  secret_key = "YOUR_AWS_SECRET_KEY"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # specify your AMI ID
  instance_type = "t2.micro"              # specify instance type

  tags = {
    Name = "Terraform-EC2"
  }

  key_name = "your-key-pair"  # optional, if you want to SSH into the instance
}

output "instance_ip" {
  value = aws_instance.example.public_ip
}
