variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project" {
  description = "Project name"
  type        = string
  default     = "appointment-service"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "prod"
}

variable "image_uri" {
  description = "Container image URI to deploy (overrides ECR if provided)"
  type        = string
  default     = ""
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.1.0.0/16"
}

variable "public_subnets" {
  description = "List of CIDRs for public subnets"
  type        = list(string)
  default     = ["10.1.1.0/24", "10.1.2.0/24"]
}

variable "private_subnets" {
  description = "List of CIDRs for private subnets"
  type        = list(string)
  default     = ["10.1.11.0/24", "10.1.12.0/24"]
}
