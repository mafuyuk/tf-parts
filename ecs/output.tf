#####################################
# ECS output
#####################################
output "ecs" {
  value = "${
     map(
       "cluster_id", "${aws_ecs_cluster.ecs_cluster.id}",
       "iam_role_arn", "${aws_iam_role.role.arn}",
     )
  }"
}