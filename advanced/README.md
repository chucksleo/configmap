# SAIC Kubernetes ConfigMap and ConfigMap Data Terraform Module

This Terraform module creates a namespace for Kubernetes within SAIC.

## Requirements

| Name       | Version   |
|------------|-----------|
| terraform  | >= 0.15.5 |
| aws        | >= 3.62   |

## Usage

```hcl
module "advanced_example" {
  source      = "path/to/module"  # Replace with the actual path or URL of the module
  name        = "example-module"
  namespace   = "example-namespace"

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

  app_image = "your-app-image:latest"
}
```

## Resources

| Name                                                | Type      |
|-----------------------------------------------------|-----------|
| [kubernetes_config_map_v1_data][link_config_map_data] | resource  |
| [kubernetes_config_map_v1][link_config_map]           | resource  |

[link_config_map_data]: https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/config_map_v1_data
[link_config_map]: https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/config_map_v1

## Inputs

The following input variables are available in this module:

| Name                  | Type         | Required | Default                 | Description                                               |
|-----------------------|--------------|----------|-------------------------|-----------------------------------------------------------|
| name                  |  string      | yes      |                         | Name of the module.                                       |
| namespace             |  string      | yes      |                         | Namespace where the resources will be deployed.           |
| labels                |  map(string) | yes      |                         | Labels to be applied to the resources.                    |
| config_map_name       |  string      | yes      |                         | Name of the ConfigMap to create.                          |
| config_map_namespace  |  string      | yes      |                         | Namespace where the ConfigMap will be deployed.           |
| data                  |  map(string) | yes      |                         | Data for the ConfigMap.                                   |
| app_image             |  string      | no       | "your-app-image:latest" | The container image to use for the Kubernetes Deployment. |

## Usage

## Outputs

| Name           | Description                     |
|----------------|---------------------------------|
| module_output  | Example output from the module. |
