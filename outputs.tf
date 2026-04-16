output "load_balancer_public_ip" {
  value = azurerm_public_ip.lb_ip.ip_address
}

output "vm_private_ips" {
  value = azurerm_network_interface.nic[*].private_ip_address
}