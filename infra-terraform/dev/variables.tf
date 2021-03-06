variable "environment" {
  type        = string
  description = "Deployment Environment"

  validation {
    condition     = can(regex("^(production|staging|development)$", var.environment))
    error_message = "Invalid environment provided. Must be 'production', 'staging' or 'development'."
  }
}

################################################################################
# VPC
################################################################################

variable "vpc_name" {
  type        = string
  description = "Name for the VPC"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "azs" {
  type        = list(string)
  description = "List of availibilty zones"
}

variable "region" {
  type        = string
  description = "Region to deploy services"
}

variable "private_subnets" {
  type        = list(string)
  description = "Private subnet CIDR blocks"
}

variable "public_subnets" {
  type        = list(string)
  description = "Public subnet CIDR blocks"
}

################################################################################
# Instances
################################################################################

variable "key_name" {
  type        = string
  description = "Name of key pair to access EC2 instances"
}

################################################################################
# S3
################################################################################
variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}
