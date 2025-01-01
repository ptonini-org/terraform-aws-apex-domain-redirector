variable "name" {}

variable "hostnames" {
  type = list(string)
}

variable "target_hostname" {}

variable "http_port" {
  default  = 80
  nullable = false
}

variable "https_port" {
  default  = 443
  nullable = false
}

variable "log_bucket" {
  type = object({
    name          = string
    region        = string
    force_destroy = optional(bool, true)
  })
  default = null
}

variable "zone_id" {}

variable "vpc_id" {}

variable "subnet_ids" {
  type = set(string)
}

variable "actions" {
  default  = {}
  nullable = false
}

variable "rules" {
  default  = {}
  nullable = false
}

variable "dns_type" {
  default  = "record"
  nullable = false
}