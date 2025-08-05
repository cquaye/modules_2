# backend configuration with variables. 


terraform {
  backend "gcs" {
    bucket      = "southpawstate-02"
    prefix      = "terraform/state"
    credentials = "*"
  }
  required_providers {
    google ={ 
        source  = "hashicorp/google"
        version = "~> 6.0"
    }
  }
}
