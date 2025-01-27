resource "aws_iam_role" "service_execution_role" {
  name = format("%s-service-role", var.service_name)

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Principal = {
          Service = "ecs-tasks.amazonaws.com"
        }
        Effect = "Allow"
        Sid    = ""
      },
    ]
  })

}

resource "aws_iam_role_policy" "service_execution_role" {
    name = format("%s-service-policy", var.service_name)
    role = aws_iam_role.service_execution_role.id

    policy = jsondecode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "ecr:GetAuthorizationToken",
                "ecr:BatchCheckLayerAvailability",
                "ecr:GetDownloadUrlForLayer",
                "ecr:BatchGetImage",
                "logs:CreateLogStream",
                "logs:PutLogEvents",
                "s3:GetBucketLocation",
                "kms:Decrypt",
                "secretsmanager:GetSecretValue"
            ],
            "Resource": "*"
        }
    ]
})
  
}

