# advanced example

// All parameters for the module should be variables
module "advanced_example" {
  source      = "../.."  # Path to your module source
  name        = var.name
  namespace   = var.namespace
  labels      = var.labels
  config_map_name      = var.config_map_name
  config_map_namespace = var.config_map_namespace

  data = var.data

  app_image = "your-app-image:latest"
}
