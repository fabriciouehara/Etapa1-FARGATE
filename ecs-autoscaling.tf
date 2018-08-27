resource "aws_autoscaling_group" "ecs-cluster" {
  availability_zones = ["${split(",", var.availability_zones)}"]
  name = "ECS ${aws_ecs_cluster.main.name}"
  min_size = "${var.min_size}"
  max_size = "${var.max_size}"
  desired_capacity = "${var.desired_capacity}"
  health_check_type = "EC2"
  launch_configuration = "${aws_launch_configuration.ecs.name}"
}


resource "aws_appautoscaling_policy" "ecs_policy" {
  name                    = "scale-down"
  policy_type             = "StepScaling"
  resource_id             = "service/clusterName/serviceName"
  scalable_dimension      = "ecs:service:DesiredCount"
  service_namespace       = "ecs"

  step_scaling_policy_configuration {
    adjustment_type         = "ChangeInCapacity"
    cooldown                = 50
    metric_aggregation_type = "Maximum"

    step_adjustment {
      metric_interval_upper_bound = 0
      scaling_adjustment          = -1
    }
  }