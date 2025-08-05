
#to cover the use subnet
resource "google_compute_subnetwork" "subnet" {
  name                             = var.subnet_name
  ip_cidr_range                    = var.ip_cidr_range
  region                           = var.region
  network                          = var.network_name
  
}



















/*
resource "google_compute_subnetwork" "us-001" {
  name                     = var.subnet_name
  ip_cidr_range            = var.ip_cidr_range
  region                   = var.region
  network                  = google_compute_network.main.id
  private_ip_google_access = true

}

# to cover the asia subnet

resource "google_compute_subnetwork" "tokyo-001" {
  name                     = var.subnet_name
  ip_cidr_range            = var.ip_cidr_range
  region                   = var.region
  network                  = google_compute_network.main.id
  private_ip_google_access = true

}

# to cover the brazil subnet

resource "google_compute_subnetwork" "brazil" {
  name                     = var.subnet_name
  ip_cidr_range            = var.ip_cidr_range
  region                   = var.region
  network                  = google_compute_network.main.id
  private_ip_google_access = true

}
*/