provider "aws" {
  region = "us-east-2"
}

resource "aws_iam_group" "developers" {
  name = "developers"
  path = "/"
}
resource "aws_iam_group" "developers" {
  name = "Management"
  path = "/"
}

resource "aws_iam_user" "tim" {
  name = "Tim"
}
resource "aws_iam_user" "tim" {
  name = "Bob"
}

resource "aws_iam_user" "tim" {
  name = "Ben"
}

resource "aws_iam_group_membership" "developers_team" {
  name = "developers-group-membership"

  users = [
    "${aws_iam_user.Tim.name}", "${aws_iam_user.Bob.name}", "${aws_iam_user.Ben.name}",
  ]

  group = "${aws_iam_group.developers.name}"
}

resource "aws_iam_group_membership" "Management_team" {
  name = "Management-group-membership"

  users = [
    "${aws_iam_user.Bob.name}",
  ]

  group = "${aws_iam_group.Management.name}"
}





