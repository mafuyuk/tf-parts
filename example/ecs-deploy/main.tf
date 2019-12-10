module "ecr" {
  source = "../../ecr"
  name   = "tf-parts"
}

module "ecd" {
  source = "../../ecs"
  name   = "tf-parts"
}