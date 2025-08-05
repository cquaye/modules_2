# core variables

variable "project_id" {
    type = string
}

variable "creds" {
    type = string
}

variable "network_name" {
  type = string
  default = "main"
}

variable "subnet_name" {
    type = string
    default = "iowa"
    
  
}

variable "region" {
    type = string
    #default = "us-central1"
  
}

variable "zone" {
    type = string
    default = "us-central1-a"
  
}

variable "ip_cidr_range" {
    type = string
    default = "10.69.20.0/24"
  
}



# vm variables

# windows vm
variable "windows_vm" {
  type = string
  default = "windows-iowa-vm"
}
# windows machine type
variable "windows_machine" {
    type = string
    default = "n2-standard-4"
  
}

# linux vm constructs for multiple VM's with tags

variable "linux_vms" {
  type = map(object({
    name         = string
    zone         = string
    machine_type = string
    subnet       = string
    tags         = list(string)
  }))
}


variable "subnets" {
    description = "Mapping subnet from different regions and names"

    type = map(object({
     subnet_name     = string
     region          = string
     ip_cidr_range   = string
    }))
  
}
# firewall variables
variable "rule_name" {
  type = string
  default = "allow-http"
}
variable "source_range" {
    type = list(string)
    default = ["0.0.0.0/0"]
  
}
