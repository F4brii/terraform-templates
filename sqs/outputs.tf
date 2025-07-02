output "url" {
  description = "La URL de la cola SQS"
  value       = aws_sqs_queue.this.id
}

output "arn" {
  description = "El ARN de la cola SQS"
  value       = aws_sqs_queue.this.arn
}
