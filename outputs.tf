output "application_flexible_federated_identity_credentials_id" {
  description = "Map of id values across all application_flexible_federated_identity_credentials, keyed the same as var.application_flexible_federated_identity_credentials"
  value       = { for k, v in azuread_application_flexible_federated_identity_credential.application_flexible_federated_identity_credentials : k => v.id }
}
output "application_flexible_federated_identity_credentials_application_id" {
  description = "Map of application_id values across all application_flexible_federated_identity_credentials, keyed the same as var.application_flexible_federated_identity_credentials"
  value       = { for k, v in azuread_application_flexible_federated_identity_credential.application_flexible_federated_identity_credentials : k => v.application_id }
}
output "application_flexible_federated_identity_credentials_audience" {
  description = "Map of audience values across all application_flexible_federated_identity_credentials, keyed the same as var.application_flexible_federated_identity_credentials"
  value       = { for k, v in azuread_application_flexible_federated_identity_credential.application_flexible_federated_identity_credentials : k => v.audience }
}
output "application_flexible_federated_identity_credentials_claims_matching_expression" {
  description = "Map of claims_matching_expression values across all application_flexible_federated_identity_credentials, keyed the same as var.application_flexible_federated_identity_credentials"
  value       = { for k, v in azuread_application_flexible_federated_identity_credential.application_flexible_federated_identity_credentials : k => v.claims_matching_expression }
}
output "application_flexible_federated_identity_credentials_credential_id" {
  description = "Map of credential_id values across all application_flexible_federated_identity_credentials, keyed the same as var.application_flexible_federated_identity_credentials"
  value       = { for k, v in azuread_application_flexible_federated_identity_credential.application_flexible_federated_identity_credentials : k => v.credential_id }
}
output "application_flexible_federated_identity_credentials_description" {
  description = "Map of description values across all application_flexible_federated_identity_credentials, keyed the same as var.application_flexible_federated_identity_credentials"
  value       = { for k, v in azuread_application_flexible_federated_identity_credential.application_flexible_federated_identity_credentials : k => v.description }
}
output "application_flexible_federated_identity_credentials_display_name" {
  description = "Map of display_name values across all application_flexible_federated_identity_credentials, keyed the same as var.application_flexible_federated_identity_credentials"
  value       = { for k, v in azuread_application_flexible_federated_identity_credential.application_flexible_federated_identity_credentials : k => v.display_name }
}
output "application_flexible_federated_identity_credentials_issuer" {
  description = "Map of issuer values across all application_flexible_federated_identity_credentials, keyed the same as var.application_flexible_federated_identity_credentials"
  value       = { for k, v in azuread_application_flexible_federated_identity_credential.application_flexible_federated_identity_credentials : k => v.issuer }
}

