variable "image" {
  type = string
  default = ""
}

variable "tag" {
  type = string
  default = ""
}

variable "resource_group_name" {
  type = string
  default = ""
}

variable "azure_region" {
  type = string
  default = ""
}

project = "2048"

app "dev2048" {
  build {
    use "docker" {}
    registry {
      use "docker" {
        image = var.image
        tag = var.tag
      }
    }
  }

  deploy {
    use "docker" {
      service_port = 3000
      static_environment = {
        PLATFORM = "docker (dev)"
      }
    }
  }
}

app "aci2048" {

  build {
    use "docker" {}
    registry {
      use "docker" {
        image = var.image
        tag = var.tag
      }
    }
  }

  deploy {
    use "azure-container-instance" {
      resource_group = var.resource_group_name
      location       = var.azure_region
      ports          = [3000]

      capacity {
        memory = "1024"
        cpu_count = 4
      }
    }
  }
}