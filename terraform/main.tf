provider "aws" {
  region = var.region
}

resource "aws_security_group" "web_sg" {
  name        = "final-project-sg"
  description = "Allow SSH and web traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "devops_app" {
  ami                    = "ami-0fc5d935ebf8bc3bc" # Ubuntu 22.04 (example)
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  user_data  =file("user-data.sh")

  tags = {
    Name = "final-devops-app"
  }
}