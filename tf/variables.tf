##########################################
###               General              ###
##########################################
variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-1"
}

##########################################
###               Networking           ###
##########################################
variable "vpc_name" {
  description = "Name of VPC"
  type = string
}

variable "vpc_cidr" {
  description = "VPC network CIDR range"
  type = string
  default = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "VPC's availability zones"
  type = list(string)
  default = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

variable "vpc_private_subnets_cidr" {
  description = "Private subnets CIDR within VPC"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "vpc_public_subnets_cidr" {
  description = "Public subnets CIDR within VPC"
  type = list(string)
  default = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "enable_nat_gateway" {
  description = "Enable NAT gateway"
  type = bool
  default = true
}

variable "single_nat_gateway" {
  description = "Single NAT can be used without serverless architecture"
  type = bool
  default = true
}

variable "enable_dns_hostnames" {
  description = "Enable DNS in VPC"
  type = bool
  default = true
}
##########################################
###               EKS                  ###
##########################################
variable "cluster_name" {
  description = "EKS cluster name"
  type = string
}