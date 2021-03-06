module "heroku" {
  source = "github.com/gomex/iac-modulo-heroku-app.git?ref=add_organization"
  name   = "tem-cara-de"
  region = "us"
  app_config_vars = {
    "APP_CONFIG_VAR_1" = "APP_CONFIG_VAR_1_VALUE"
    "APP_CONFIG_VAR_2" = "APP_CONFIG_VAR_2_VALUE"
  }
  app_config_vars_sensitive = {
    "APP_CONFIG_VAR_3" = "APP_CONFIG_VAR_3_VALUE"
    "APP_CONFIG_VAR_4" = "APP_CONFIG_VAR_4_VALUE"
  }

  organization = {
    name     = "panoptico"
    locked   = false
    personal = false
  }
}
