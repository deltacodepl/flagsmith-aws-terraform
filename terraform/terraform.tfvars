# Application Definition 
app_name        = "flagsmith"
app_environment = "production"

settings_module = {
  "production" = "app.settings.production",
  "dev"        = "app.settings.develop"
}

route53_hosted_zone = "unifoil.eu"
region = "eu-central-1"
certificate_arn = "arn:aws:acm:eu-central-1:208456122390:certificate/1a6e9dd4-cffa-476b-a2ea-f03fa2b773e1"

docker_image_url = "flagsmith/flagsmith:latest"

allowed_hosts = "*"

cpu = 512
memory = 1024