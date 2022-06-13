resource "aws_ssm_parameter" "mod1_1" {
  name  = "/gitlab-module1-pr-${var.suffix}"
  type  = "String"
  value = var.value
}

module "mod2" {
  source = "../module2"

  suffix = "i-am-in-code"
}