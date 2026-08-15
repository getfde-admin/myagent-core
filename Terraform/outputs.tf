output "schedules_db_uuid" {
  description = "D1 database UUID."
  value       = local.schedules_db_uuid
}

output "schedules_db_name" {
  description = "D1 database name."
  value       = local.schedules_db_name
}

output "github_agent_worker_script_name" {
  description = "GithubAgentWorker script name."
  value       = cloudflare_worker.github_agent.name
}

output "github_agent_workers_dev_enabled" {
  description = "Whether the GithubAgentWorker workers.dev subdomain is enabled."
  value       = cloudflare_worker.github_agent.subdomain.enabled
}

output "github_agent_worker_url" {
  description = "GithubAgentWorker workers.dev URL."
  value       = "https://${cloudflare_worker.github_agent.name}.${var.workers_dev_subdomain}.workers.dev"
}

output "github_agent_fixed_cron" {
  description = "Cron schedule applied to GithubAgentWorker."
  value       = "* * * * *"
}
