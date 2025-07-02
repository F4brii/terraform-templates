resource "aws_sns_topic_subscription" "this" {
  topic_arn = var.topic_arn
  protocol  = "sqs"
  endpoint  = var.queue_arn
}

resource "aws_sqs_queue_policy" "allow_sns" {
  queue_url = var.queue_url

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid       = "AllowSNSPublish",
        Effect    = "Allow",
        Principal = {
          Service = "sns.amazonaws.com"
        },
        Action    = "SQS:SendMessage",
        Resource  = var.queue_arn,
        Condition = {
          ArnEquals = {
            "aws:SourceArn" = var.topic_arn
          }
        }
      }
    ]
  })
}
