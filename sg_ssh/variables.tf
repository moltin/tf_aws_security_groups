variable "namespace" {
    description = "Namespace variable used to namespace shit"
}

variable "vpc_id" {
    description = "VPC id"
}

variable "ssh_cidr_block" {
    default = "0.0.0.0/0"
    description = "The ssh cidr block"
}

variable "ssh_port" {
    default = "0.0.0.0/0"
    description = "The ssh cidr block"
}
