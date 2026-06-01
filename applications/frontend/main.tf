module "database" {
  source = "../../modules/storage"
}

output "database_link" {
  value = module.database.storage_handle
}
