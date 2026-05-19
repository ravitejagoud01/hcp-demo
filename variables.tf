variable "vpc_cidr" {
  description = "This cidr block is for main vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_public_cidr" {
  description = "public cidr block"
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_private_cidr" {
  description = "private cidr block"
  type        = string
  default     = "10.0.2.0/24"
}