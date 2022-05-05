resource "aws_ssm_parameter" "mod1_1" {
  name  = "/scalr-${var.suffix}"
  type  = "String"
  value = var.value
}
