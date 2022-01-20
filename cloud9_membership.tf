resource "aws_iam_user" "this" {
    count = "${length(var.username)}"
    name = "${element(var.username,count.index )}"
}

resource "aws_cloud9_environment_membership" "this" {
    count = "${length(var.username)}"
    environment_id = aws_cloud9_environment_ec2.this.id
    permissions    = "Read Only"
    user_arn       = "${aws_iam_user.this.*.arn}"
}