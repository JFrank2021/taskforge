locals {
  # On fusionne les tags communs (venus du root) avec des tags calculés ici
  tags = merge(var.common_tags, {
    environment = var.environment
    managed_by  = "terraform"
    module      = "postgres"
  })
}

terraform {
  required_providers {
    docker = { source = "kreuzwerker/docker", version = "~> 3.0" }
  }
}

resource "docker_network" "app_net" {
  name = "${var.name_prefix}-net"
}

resource "docker_image" "postgres" {
  name = "postgres:16-alpine"
}

resource "docker_container" "db" {
  name  = "${var.name_prefix}-db"
  image = docker_image.postgres.image_id
  env   = ["POSTGRES_PASSWORD=demo"]

  networks_advanced { name = docker_network.app_net.name }

  ports {
    internal = 5432
    external = var.db_port
  }
  dynamic "labels" {
    for_each = local.tags
    content {
      label = labels.key
      value = labels.value
    }
  }
}
