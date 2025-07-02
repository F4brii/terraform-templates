output "sqs_queue_url" {
  description = "La URL de la cola SQS"
  value       = aws_sqs_queue.this.id
}

output "sqs_queue_arn" {
  description = "El ARN de la cola SQS"
  value       = aws_sqs_queue.this.arn
}
