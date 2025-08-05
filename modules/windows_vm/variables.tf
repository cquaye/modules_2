variable "vm_name" {
    type            = string
    default         = "iowa-vm"
  
}

variable "machine_type" {
  type              = string
  default           = "n2-standard-4"
}


variable "subnet_self_link" {
    type            = any
  
}

variable "zone" {
    type            = string
    default         = "us-central1-a"
  
}