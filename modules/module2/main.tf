resource "aws_ssm_parameter" "mod2_1" {
  name  = "/gitlab-module2-${var.suffix}"
  type  = "String"
  value = var.value
}
