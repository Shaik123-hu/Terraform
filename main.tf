terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.3.0"
    }
  }
}

resource "local_file" "pet" {
filename = each.value
for_each = toset(var.filename)
content = "Hello Terraform"

