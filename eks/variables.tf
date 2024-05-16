# EKS Cluster Input Variables
variable "cluster_name" {
  description = "Name of the EKS cluster. Also used as a prefix in names of related resources."
  type        = string
  default     = "eksdemo"
}

variable "cluster_service_ipv4_cidr" {
  description = "service ipv4 cidr for the kubernetes cluster"
  type        = string
  default     = null
}

variable "cluster_version" {
  description = "Kubernetes minor version to use for the EKS cluster (for example 1.21)"
  type        = string
  default     = null
}
variable "cluster_endpoint_private_access" {
  description = "Indicates whether or not the Amazon EKS private API server endpoint is enabled."
  type        = bool
  default     = false
}

variable "cluster_endpoint_public_access" {
  description = "Indicates whether or not the Amazon EKS public API server endpoint is enabled. When it's set to `false` ensure to have a proper private access with `cluster_endpoint_private_access = true`."
  type        = bool
  default     = true
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "List of CIDR blocks which can access the Amazon EKS public API server endpoint."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "env" {
  description = "Environment name."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "eks_keypair" {
  description = "AWS Key pair that need to be associated with EKS"
  type        = string
}

variable "ami_type" {
  description = "Type of AMI which is used by eks cluster"
  type        = string
}

variable "public_subnet_ids" {
  description = "Public subnets ids"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "Private subnets ids"
  type        = list(string)
}