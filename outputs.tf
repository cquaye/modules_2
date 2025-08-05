/*

output "subnet_self_links" {
    value = { 
        for i, link in module.network:
        i => link.subnet_self_link
    }
  
}
*/