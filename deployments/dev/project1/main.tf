module "mod1" {
  source = "../../../modules/module1"

  suffix = "project1-dev"
  value  = "1-1"
}

module "mod2" {
  source = "../../../modules/module2"

  suffix = "project1-dev"
  value  = "1-2"
}
