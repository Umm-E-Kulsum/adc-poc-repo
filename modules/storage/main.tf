variable "storage_prefix" { type = string default = "poc3-store"}
resource "random_string" "app_store" { length = 16 special = false prefix = var.storage_prefix}
output "storage_handle" { value = random_string.app_store.id}
