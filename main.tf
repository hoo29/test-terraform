resource "aws_ssm_parameter" "test" {
  name  = "/gitlab/abc"
  value = "def"
  type  = "String"
}
