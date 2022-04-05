resource "aws_ssm_parameter" "mod1_1" {
  name  = "/gitlab-module1-${var.suffix}"
  type  = "String"
  value = var.value
}
