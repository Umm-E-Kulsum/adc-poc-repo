variable "auth_prefix" {
  type    = string
  default = "poc-auth"
}

resource "random_string" "token_generator" {
  length  = 12
  special = false
  prefix  = var.auth_prefix
}

output "security_key" {
  value = random_string.token_generator.id
}
