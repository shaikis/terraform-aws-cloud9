resource "aws_iam_user" "this" {
    count = length(var.username)
    name =  element(var.username,count.index )
}

#resource "aws_cloud9_environment_membership" "this" {
#    count = "${length(var.username)}"
#    environment_id = aws_cloud9_environment_ec2.this.id
#    permissions    = "read-write"
#    user_arn       = "${data.aws_iam_user.this.*.arn}"
#}

resource "aws_iam_account_password_policy" "pass_policy" {
  minimum_password_length        = 8
  require_lowercase_characters   = true
  require_numbers                = true
  require_uppercase_characters   = true
  require_symbols                = false
  allow_users_to_change_password = true
}

resource "aws_iam_user_policy" "user_policy" {
  count = length(var.username)
  name = "new"
  user = element(var.username,count.index)
policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
