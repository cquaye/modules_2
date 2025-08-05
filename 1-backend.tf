# backend configuration with variables. 


terraform {
  backend "gcs" {
    bucket      = "southpawstate-02"
    prefix      = "terraform/state"
    credentials = "dusty-class-6-5-carlton-quaye-02096ed33190.json"
  }
  required_providers {
    google ={ 
        source  = "hashicorp/google"
        version = "~> 6.0"
    }
  }
}
