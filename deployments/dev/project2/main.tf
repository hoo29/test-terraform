module "mod1" {
  source = "../../../modules/module1"

  suffix = "project2-dev"
  value  = "2-1"
}

module "mod2" {
  source = "../../../modules/module2"

  suffix = "project2-devdddd"
  value  = "2-2"
}
