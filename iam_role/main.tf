resource "aws_iam_role" "this" {
  name        = var.role_name
  path        = var.path
  description = var.description

  assume_role_policy = jsonencode({
    Version = var.Version
    Statement = [
      for stmt in var.Statement : {
        Action = stmt.Action
        Effect = stmt.Effect
        Principal = {
          Service = stmt.Principal.Service
          AWS     = stmt.Principal.AWS
        }
      }
    ]
  })

  tags = var.tags
}

resource "aws_iam_role_policy_attachment" "this" {
  for_each = toset(var.policy_arns)

  role       = aws_iam_role.this.name
  policy_arn = each.value
}
