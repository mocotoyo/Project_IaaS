variable "aws_region" {
  description = "Región de AWS para el despliegue"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "ID de la AMI de Ubuntu para la instancia EC2"
  type        = string
  default     = "ami-041a8775f0a0c201d" # Ejemplo: Ubuntu 22.04 LTS (us-east-1)
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t2.micro"
}
