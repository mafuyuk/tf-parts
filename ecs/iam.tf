#####################################
# ECS Execution Role
#####################################
resource "aws_iam_role" "role" {
  name               = "${terraform.workspace}-${var.name}-ecs-execution-role"
  assume_role_policy = jsonencode(yamldecode(file("${path.module}/yaml_files/assume_role.yaml")))
}

resource "aws_iam_role_policy" "ecs_execution_policy" {
  name   = "${terraform.workspace}-${var.name}-ecs-execution-policy"
  role   = "${aws_iam_role.role.id}"
  policy = jsonencode(yamldecode(file("${path.module}/yaml_files/ecs_execution_policy.yaml")))
}

resource "aws_iam_role_policy" "kms_access_policy" {
  name   = "${terraform.workspace}-${var.name}-kms-access-policy"
  role   = "${aws_iam_role.role.id}"
  policy = jsonencode(yamldecode(file("${path.module}/yaml_files/kms_access_policy.yaml")))
}

resource "aws_iam_role_policy" "rds_connect_policy" {
  name   = "${terraform.workspace}-${var.name}-rds-connect-policy"
  role   = "${aws_iam_role.role.id}"
  policy = jsonencode(yamldecode(file("${path.module}/yaml_files/rds_connect_policy.yaml")))
}

resource "aws_iam_role_policy" "s3_access_policy" {
  name   = "${terraform.workspace}-${var.name}-s3-access-policy"
  role   = "${aws_iam_role.role.id}"
  policy = jsonencode(yamldecode(file("${path.module}/yaml_files/s3_access_policy.yaml")))
}