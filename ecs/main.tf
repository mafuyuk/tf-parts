#####################################
# ECS Cluster Definition
#####################################
resource "aws_ecs_cluster" "ecs_cluster" {
  name = "${terraform.workspace}-${var.name}"
}