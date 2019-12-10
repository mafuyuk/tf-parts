#####################################
# ECR Repository
#####################################
resource "aws_ecr_repository" "ecr" {
  name = "${terraform.workspace}-${var.name}"
}
