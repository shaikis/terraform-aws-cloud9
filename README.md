# terraform-aws-cloud9
cloud9 environment setup

```
module "cloud9" {
    source = "https://github.com/shaikis/terraform-aws-cloud9.git"
    cloud9_env_name = "test"
    region = "eu-west-1"
    cloud9_instance_type = "t2.micro"
    automatic_stop_time_minutes = 30
    username = [ismails, xyz]

}
```