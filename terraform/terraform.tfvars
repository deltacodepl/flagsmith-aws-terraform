# Application Definition 
app_name        = "flagsmith"
app_environment = "dev"

# your domain
route53_hosted_zone = "unifoil.eu"
region              = "eu-central-1"
docker_image_url    = "flagsmith/flagsmith:latest"

allowed_hosts = "*"

cpu    = 512
memory = 1024