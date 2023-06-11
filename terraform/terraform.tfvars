# Application Definition 
app_name        = "flagsmith"
app_environment = "dev"

settings_module = {
  "production" = "app.settings.production",
  "dev"        = "app.settings.develop"
}

route53_hosted_zone = ""
certificate_arn     = ""
region              = "eu-central-1"
docker_image_url    = "flagsmith/flagsmith:latest"

allowed_hosts = "*"

cpu    = 512
memory = 1024