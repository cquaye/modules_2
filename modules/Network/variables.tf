variable "network_name" {
    type             = string
    default          = "main"
}

variable "subnet_name" {
    type             = string
    #default = "iowa"
  
}

variable "region" {
    type             = string
    #default = "us-central1"
  
}

variable "ip_cidr_range" {
    type             = string
   # default = "10.69.20.0/24"
  
}

/*
variable "subnets" {
    description      = "Mapping subnet from different regions and names"
    type             = map(object({
      subnet_name    = string
      reigon         = string
      ip_cidr_range  = string

    }))
  
}
*/