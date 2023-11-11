variable "region_name" {
  description = "Region name where VPC is created"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "CIDR for our VPC"
  type        = string
  default     = "10.10.0.0/16"
}

variable "environment" {
  description = "Environment Names"
  type        = string
  default     = "dev"
}

variable "public_subnets" {
  description = "Public subnets"
  type        = list(string)
  default     = ["10.10.0.0/24", "10.10.2.0/24"]
}

variable "private_subnets" {
  description = "Private Subnets"
  type        = list(string)
  default     = ["10.10.1.0/24", "10.10.3.0/24"]
}

variable "public_az" {
  description = "Public AZ"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "private_az" {
  description = "Private AZ"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}
