
provider "aws" {
 profile = "default"
  region = "us-east-2"
}
  resource "aws_launch_template" "alt" {
  name_prefix   = "alt"
  image_id      = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
}
resource "aws_autoscaling_group" "asg" {
  availability_zones = ["us-east-2a"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1
  launch_template {
    id      = aws_launch_template.alt.id
    version = "$Latest"
  }
}


