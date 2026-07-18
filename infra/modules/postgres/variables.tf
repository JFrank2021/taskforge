variable "name_prefix" {
  description = "Préfixe pour nommer les ressources sans collision"
  type        = string
}

variable "db_port" {
  description = "Port hôte exposé"
  type        = number
}

variable "environment" {
  description = "Environnement cible (dev, staging, prod)"
  type        = string
}

variable "common_tags" {
  description = "Étiquettes communes injectées par le root"
  type        = map(string)
  default     = {}
}
