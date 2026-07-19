terraform {
  required_providers {
    docker = { source = "kreuzwerker/docker", version = "~> 3.0" }
  }
}

provider "docker" {}

module "database" {
  source      = "../../modules/postgres"
  name_prefix = "taskforge-prod"
  db_port     = 5443
  environment = "prod"
  common_tags = {
    project = "taskforge"
    owner   = "frank"
  }
}
