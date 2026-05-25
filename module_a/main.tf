module "b" {
  source = "../module_b"
}

resource "random_string" "a_res" {
  length  = 8
  special = false
}
