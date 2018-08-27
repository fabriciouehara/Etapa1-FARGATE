resource "aws_launch_configuration" "ecs" {
    name = "ECS ${aws_ecs_cluster.main.name}"
    image_id = "${var.ami}"
    instance_type = "${var.instance_type}"
}
