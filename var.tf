variable "name_prefix" {
  type = string
  default = "terraform-lc-example-"
}
variable "image_id" {
  type = string
  default = "ami-0fb653ca2d3203ac1"
}
variable "instance_type" {
  type = string
  default = "t2.micro"
}
variable "name" {
  type = string
  default = "terraform-asg-example"
}
variable "availability_zones" {
  type = list(string)
  default = ["us-east-2c"]
}
variable "name_lb" {
  type = string
  default = "test-lb-tf"
}
variable "load_balancer_type" {
  type = string
  default = "application"
}
variable "security_groups" {
  type = list(string)
  default = ["sg-0244e3f85210cc582"]
}
variable "subnets" {
  type = list(string)
  default =  ["subnet-bff76bd4","subnet-15e22868"]
}
variable "name_TG" {
  type = string
  default = "tf-example-lb-tg"
}
variable "protocol" {
  type = string
  default = "HTTP"
}
variable "vpc_id" {
  type = string
  default = "vpc-6014600b"
}
variable "target_id" {
  type = string
  default = "aws_launch_template.alt.id"
}