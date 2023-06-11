variable "region" {
  description = "The AWS region to create resources in."
}

variable "app_environment" {
  default = "dev"
}

variable "app_name" {
  type = string
}


# VPC

variable "vpc_cidr" {
  type        = string
  description = "CDIR of VPC"
  default     = "10.0.0.0/16"
}

# load balancer

variable "health_check_path" {
  description = "Health check path for the default target group"
  default     = "/health/"
}

# ecs fargate


variable "docker_image_url" {
  description = "Docker image to run in the ECS cluster"
}

variable "app_count" {
  description = "Number of Docker containers to run"
  default     = 2
}

# FIXME
variable "allowed_hosts" {
  description = "Domain name for allowed hosts"
}


# logs

variable "log_retention_in_days" {
  default = 7
}

# specify dev/prod django settings
variable "settings_module" {
  type = map(string)
}

# rds
variable "ssm_kms_key" {
  type        = string
  default     = "alias/aws/ssm"
  description = "KMS key to store encrypted password in AWS SSM Parameter store service"
}

variable "rds_db_name" {
  description = "RDS database name"
  default     = "flagsmithdb"
}

variable "rds_username" {
  description = "RDS database username"
  default     = "flagsmithdbuser"
}

variable "rds_password" {
  description = "RDS database password"
  default     = ""
}

variable "rds_instance_class" {
  description = "RDS instance type"
  default     = "db.t3.micro"
}


# domain

variable "certificate_arn" {
  description = "AWS Certificate Manager ARN for validated domain"
}

variable "route53_hosted_zone" {
  type = string
}

# Django

variable "django_secret_key" {
  description = "Django env. variable DJANGO_SECRET_KEY"
  default     = ""
}

variable "cpu" {
  type = number
}

variable "memory" {
  type = number
}