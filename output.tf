#output "pool_public_ip" {
#  value = "${google_compute_forwarding_rule.default.ip_address}"
#}

output "master_ip" {
  value = "${google_compute_instance.calico-master.network_interface.0.access_config.0.assigned_nat_ip}"
}

output "instance_ips" {
  value = "${join(" ", google_compute_instance.calico.*.network_interface.0.access_config.0.assigned_nat_ip)}"
}
