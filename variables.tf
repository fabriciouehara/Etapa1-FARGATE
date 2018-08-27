variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

variable "access_key" {
  default = "XXXXXXXXXXXXXXXXXXXX"
}

variable "secret_key" {
  default = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
}

variable "fargate_vpc" {
  default = "10.20.0.0/16"
}

variable "az_count" {
  description = "Number of AZs to cover in a given AWS region"
  default     = "2"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "adongy/hostname-docker:latest"
  default     = "nginx:latest"
}#

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 2
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "256"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "512"
}

### Auto Scaling
variable "ami" {
  ## Nao consegui criar imagem a partir da task do ECS, entao estou utilizando um padrao
  default = "ami-e1c33f8a"
  description = "AMI id to launch, must be in the region specified by the region variable"
}

variable "instance_type" {
    default = "m1.small"
    description = "Name of the AWS instance type"
}

variable "min_size" {
    default = "1"
    description = "Minimum number of instances to run in the group"
}

variable "max_size" {
    default = "5"
    description = "Maximum number of instances to run in the group"
}

variable "desired_capacity" {
    default = "1"
    description = "Desired number of instances to run in the group"
}

variable "availability_zones" {
    default = "us-east-1a"
    description = "Comma separated list of EC2 availability zones to launch instances, must be within region"
}