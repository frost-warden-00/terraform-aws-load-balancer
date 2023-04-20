variable "vpc_name" {
  type        = string
  description = "Name of VPC"
}

variable "lb_name" {
  type        = string
  description = "Name of the ALB"
}

variable "lb_internal" {
  type        = bool
  description = "You want the ALB to be internal?"
  default     = false
}

variable "lb_type" {
  type        = string
  description = "Type of ALB" # Right now only support ALB
  default     = "application"
}

variable "subnets" {
  description = "List of subnets"
  type        = list(string)
}

variable "target_group_arn" {
  type        = string
  description = "ARN of target group to use"
}