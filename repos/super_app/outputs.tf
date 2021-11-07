output "repository_id" {
  description = "The ID of the repository"
  value       = module.repo.repository_id
}

output "arn" {
  description = "The ARN of the repository"
  value       = module.repo.arn
}

output "clone_url_http" {
  description = "The URL to use for cloning the repository over HTTPS."
  value       = module.repo.clone_url_http
}

output "clone_url_ssh" {
  description = "The URL to use for cloning the repository over SSH."
  value       = module.repo.clone_url_ssh
}

output "name" {
  description = "The name for the repository"
  value       = var.repository_name
}