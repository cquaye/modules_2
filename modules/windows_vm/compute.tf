resource "google_compute_instance" "vm_windows-instance" {
  name                              = var.vm_name
  machine_type                      = var.machine_type
  zone                              = var.zone
  tags                              = ["kayleigh"]

  boot_disk {
    initialize_params {
      image                         = "windows-cloud/windows-2022"
    }
  }
  

  network_interface {
    subnetwork                     = var.subnet_self_link

    access_config {}
  }

}