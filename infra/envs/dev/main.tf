terraform {
  required_providers {
    docker = { source = "kreuzwerker/docker", version = "~> 3.0" }
  }
}

provider "docker" {}

module "database" {
  source      = "../../modules/postgres"
  name_prefix = "taskforge-dev"
  db_port     = 5433
  environment = "dev"
  common_tags = {
    project = "taskforge"
    owner   = "frank"
  }
}
