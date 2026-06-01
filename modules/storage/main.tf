variable "storage_prefix" {
  type    = string
  default = "poc3-store"
}

resource "random_string" "app_store" {
  length  = 16
  special = false
}

output "storage_handle" {
  value = "${var.storage_prefix}-${random_string.app_store.id}"
}
