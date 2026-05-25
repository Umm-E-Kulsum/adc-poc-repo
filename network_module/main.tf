module "identity" {
  source = "../auth_module"
}

resource "random_string" "vpc_identifier" {
  length  = 16
  special = false
}

output "network_uuid" {
  value = random_string.vpc_identifier.id
}

output "inherited_token" {
  value = module.identity.security_key
}
