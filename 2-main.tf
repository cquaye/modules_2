         # terraforming the environment

# building the network

/*
module "network" {
    source        = "./modules/network"
    network_name  = var.network_name
    subnet_name   = var.subnet_name
    region        = var.region
    ip_cidr_range = var.ip_cidr_range
  
  }
*/

resource "google_compute_network" "main" {
  name                            = var.network_name
  routing_mode                    = "REGIONAL"
  auto_create_subnetworks         = false
  mtu                             = 1460
  delete_default_routes_on_create = false

}

 
module "network" { 
   for_each      = var.subnets
   source        = "./modules/network"

   subnet_name   = each.value.subnet_name
   network_name  = google_compute_network.main.name
   region        = each.value.region
   ip_cidr_range = each.value.ip_cidr_range

}


 
locals {
    subnet_map = {
        for i, link in module.network:
        i => link.subnet_self_link

   }
}


# building the windwows rdp machine

module "windows_vm" {
    source           = "./modules/windows_vm"
    vm_name          = var.windows_vm
    zone             = var.zone
    machine_type     = var.windows_machine
    subnet_self_link = local.subnet_map["us"]
  
}


# linux machine

module "linux-vm" {
  source           = "./modules/linux_vm"
  for_each         = var.linux_vms

  vm_name          = each.value.name
  zone             = each.value.zone
  machine_type     = each.value.machine_type
  subnet_self_link = local.subnet_map[each.value.subnet]
  network_tags     = each.value.tags
}

# Creating firewall rule

module "firewall" {
    source         = "./modules/firewall"
    network_name   = var.network_name
    rule_name      = var.rule_name
    source_range   = var.source_range
    depends_on     = [module.network]

  
}