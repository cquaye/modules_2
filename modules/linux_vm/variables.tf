variable "vm_name" {
    type           = string
    default        = "iowa-vm"
  
}


variable "zone" {
    type           = string
    default        = "us-central1-a"
  
}

variable "machine_type" {
    type           = string
    default        = "e2-micro"
  
}



variable "subnet_self_link" {
    type           = any
  
}


variable "network_tags" {
    type          = list(string)
  
}