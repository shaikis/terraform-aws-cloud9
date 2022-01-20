variable "region" {
    type = string
    default = "eu-west-1"
}

variable "cloud9_env_name" {}

variable "cloud9_instance_type" {
    default = "t2.micro"
}

variable "automatic_stop_time_minutes" {
    default = 30
}

variable "username" {
    type = list
}
