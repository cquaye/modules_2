

output "subnet_self_link" {
    value = google_compute_subnetwork.subnet.self_link
  
}




/*
output "subnet_self_links" {
    value = {
        subnet_us         = google_compute_subnetwork.us.self_link
        subnet_asia       = google_compute_subnetwork.tokyo.self_link
        subnet_brazil     = google_compute_subnetwork.brazil.self_link
    }
}
*/