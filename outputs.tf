output "application_flexible_federated_identity_credentials_id" {
  description = "Map of id values across all application_flexible_federated_identity_credentials, keyed the same as var.application_flexible_federated_identity_credentials"
  value       = { for k, v in azuread_application_flexible_federated_identity_credential.application_flexible_federated_identity_credentials : k => v.id if v.id != null && length(v.id) > 0 }
}
output "application_flexible_federated_identity_credentials_application_id" {
  description = "Map of application_id values across all application_flexible_federated_identity_credentials, keyed the same as var.application_flexible_federated_identity_credentials"
  value       = { for k, v in azuread_application_flexible_federated_identity_credential.application_flexible_federated_identity_credentials : k => v.application_id if v.application_id != null && length(v.application_id) > 0 }
}
output "application_flexible_federated_identity_credentials_audience" {
  description = "Map of audience values across all application_flexible_federated_identity_credentials, keyed the same as var.application_flexible_federated_identity_credentials"
  value       = { for k, v in azuread_application_flexible_federated_identity_credential.application_flexible_federated_identity_credentials : k => v.audience if v.audience != null && length(v.audience) > 0 }
}
output "application_flexible_federated_identity_credentials_claims_matching_expression" {
  description = "Map of claims_matching_expression values across all application_flexible_federated_identity_credentials, keyed the same as var.application_flexible_federated_identity_credentials"
  value       = { for k, v in azuread_application_flexible_federated_identity_credential.application_flexible_federated_identity_credentials : k => v.claims_matching_expression if v.claims_matching_expression != null && length(v.claims_matching_expression) > 0 }
}
output "application_flexible_federated_identity_credentials_credential_id" {
  description = "Map of credential_id values across all application_flexible_federated_identity_credentials, keyed the same as var.application_flexible_federated_identity_credentials"
  value       = { for k, v in azuread_application_flexible_federated_identity_credential.application_flexible_federated_identity_credentials : k => v.credential_id if v.credential_id != null && length(v.credential_id) > 0 }
}
output "application_flexible_federated_identity_credentials_description" {
  description = "Map of description values across all application_flexible_federated_identity_credentials, keyed the same as var.application_flexible_federated_identity_credentials"
  value       = { for k, v in azuread_application_flexible_federated_identity_credential.application_flexible_federated_identity_credentials : k => v.description if v.description != null && length(v.description) > 0 }
}
output "application_flexible_federated_identity_credentials_display_name" {
  description = "Map of display_name values across all application_flexible_federated_identity_credentials, keyed the same as var.application_flexible_federated_identity_credentials"
  value       = { for k, v in azuread_application_flexible_federated_identity_credential.application_flexible_federated_identity_credentials : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "application_flexible_federated_identity_credentials_issuer" {
  description = "Map of issuer values across all application_flexible_federated_identity_credentials, keyed the same as var.application_flexible_federated_identity_credentials"
  value       = { for k, v in azuread_application_flexible_federated_identity_credential.application_flexible_federated_identity_credentials : k => v.issuer if v.issuer != null && length(v.issuer) > 0 }
}

