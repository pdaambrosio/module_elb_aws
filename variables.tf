variable "prefix" {
  type       = string
  default = "webapp"
  description = "The prefix used for all resources in this example."
}

variable "extra_tags" {
  type        = map(any)
  description = "value of the tags to be added to the resources"
  default     = {}
}

variable "lb_internal" {
  type        = bool
  description = "If true, the LB will be internal."
  default = false
}

variable "type_loadbalancer" {
  type        = string
  description = "The type of load balancer to create. The default is application."
  default = "network"
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet in which the load balancer will be created."
}

variable "tg_port" {
  type        = number
  description = "The port on which the targets are listening."
  default = 80
}

variable "tg_protocol" {
  type        = string
  description = "The protocol to use for routing traffic to the targets."
  default = "TCP"
}

variable "tg_vpc_id" {
  type        = string
  description = "The ID of the VPC for the targets."
}

variable "listerner_port" {
  type        = number
  description = "The port on which the load balancer is listening."
  default = 80
}

variable "listener_protocol" {
  type        = string
  description = "The protocol for connections from clients to the load balancer."
  default = "TCP"
}

variable "listerner_type" {
  type        = string
  description = "The type of action to perform."
  default = "forward"
}

variable "tg_number_instances" {
  type        = number
  description = "The number of instances to attach to the target group."
  default = 2
}

variable "tg_instances_id" {
  type        = list(string)
  description = "The ID of the instances to attach to the target group."
}

variable "tg_instances_port" {
  type        = number
  description = "The port on which the instances are listening."
  default = 80
}
