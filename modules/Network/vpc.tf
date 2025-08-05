/*


resource "google_compute_network" "main" {
  name                            = var.network_name
  routing_mode                    = "REGIONAL"
  auto_create_subnetworks         = false
  mtu                             = 1460
  delete_default_routes_on_create = false

}

*/