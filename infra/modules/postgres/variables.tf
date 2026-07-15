variable "name_prefix" {
  description = "Préfixe pour nommer les ressources sans collision"
  type        = string
}

variable "db_port" {
  description = "Port hôte exposé"
  type        = number
}
