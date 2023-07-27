# advanced example - tfvars file
# Customize these values as needed
name                 = "example-module"
namespace            = "example-namespace"

labels = {
  environment = "dev"
  app         = "my-app"
}

config_map_name      = "example-config-map"
config_map_namespace = "config-map-namespace"

data = {
  database_url    = "mysql://db.example.com:3306/mydb"
  api_endpoint    = "https://api.example.com/v1"
  max_connections = "10"
}
