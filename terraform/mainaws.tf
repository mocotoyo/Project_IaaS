terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configuración del proveedor (se asume que las credenciales están configuradas 
# en el entorno, o se usarían variables de acceso/secret_key)
provider "aws" {
  region = var.aws_region
}

# Simulación de un grupo de seguridad para la app (permite SSH y HTTP)
resource "aws_security_group" "app_sg" {
  name_prefix = "app-sg-"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "App-Security-Group"
  }
}

# Simulación de la instancia EC2 donde se desplegará la app
resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = "my-aws-key" # Asegúrate de tener una clave válida en tu cuenta
  vpc_security_group_ids = [aws_security_group.app_sg.id]

  tags = {
    Name = "App-Web-Server"
  }
}

# Salida para obtener la IP pública de la instancia, necesaria para Ansible
output "public_ip" {
  value = aws_instance.app_server.public_ip
}
