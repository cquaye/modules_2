resource "google_compute_firewall" "allow-http" {
  name                            = var.rule_name
  network                         = var.network_name
 

  allow {
    protocol                      = "tcp"
    ports                         = ["80"]
  }
   #target_tags =  var.target_tags 
   source_ranges                  = var.source_range

}



#---Allow for rdp with both windows VMs ---
resource "google_compute_firewall" "allow-rdp" {
  name                            = var.rule_name2
  network                         = var.network_name
  

  allow {
    protocol                      = "tcp"
    ports                         = ["3389"]
  }
  # target_tags =  var.target_tags 
   source_ranges                  = var.source_range
}
