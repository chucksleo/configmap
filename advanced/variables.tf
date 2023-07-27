# advanced example -
variable "name" {
  description = "Name of the module."
  type        = string
  required    = true
}

variable "namespace" {
  description = "Namespace where the resources will be deployed."
  type        = string
  required    = true
}

variable "labels" {
  description = "Labels to be applied to the resources."
  type        = map(string)
  required    = true
}

variable "config_map_name" {
  description = "Name of the ConfigMap to create."
  type        = string
  required    = true
}

variable "config_map_namespace" {
  description = "Namespace where the ConfigMap will be deployed."
  type        = string
  required    = true
}

variable "data" {
  description = "Data for the ConfigMap."
  type        = map(string)
  required    = true
}
