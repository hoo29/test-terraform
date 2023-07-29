resource "aws_sns_topic" "test" {
  name = "in-terraform-apply"
}

data "external" "test" {
  program = [
    "aws",
    "sns",
    "create-topic",
    "--name",
    "in-terraform-plan",
    "--region",
    "eu-west-1",
    "--output",
    "json"
  ]
}
