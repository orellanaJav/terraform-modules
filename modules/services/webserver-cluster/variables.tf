variable "server_port" {
  description = "value of the server port"
  default     = 8080
}

variable "cluster_name" {
  description = "The namoe to use for all the cluster resources"
  type        = string
}

variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the database's remote state"
  type        = string
}

variable "db_remote_state_key" {
  description = "The path for the database's remote state in S3"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 Instances to run"
  type        = string
}

variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = string
}

variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  type        = string
}

variable "custom_tags" {
  description = "Custom tags to set on the Instances in the ASG"
  type        = map(string)
  default     = {}
}

variable "enable_autoscaling" {
  description = "If set to true, enable auto scaling"
  type        = bool
}

variable "ami" {
  description = "The AMI to run in the cluster"
  type        = string
  default     = "ami-09040d770ffe2224f"
}

variable "server_text" {
  description = "The text the web server should return"
  type        = string
  default     = "Hello, World!"
}
