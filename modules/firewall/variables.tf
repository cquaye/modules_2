variable "rule_name" {
  type                = string
  default             = "allow-http"
}


variable "rule_name2" {
  type                = string
  default             = "allow-rdp"
}
variable "source_range" {
    type              = list(string)
    default           =["0.0.0.0/0"]
  
}

variable "network_name" {
  type                = string
  default             = "main"

}

/*
variable "target_tags" {
  type = list(string)
}
*/
