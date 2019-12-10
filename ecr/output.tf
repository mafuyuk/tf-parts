#####################################
# ECR output
#####################################
output "ecr" {
  value = "${
     map(
       "repository_url", "${aws_ecr_repository.ecr.repository_url}",
     )
  }"
}
