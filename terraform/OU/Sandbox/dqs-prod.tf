module "dqs_prod" {
  source = "../../modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "awsadmin+sandbox+dqs-prod@caizin.com"
    AccountName               = "dqs-prod"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "Mohit.Kunjir@caizin.com"
    SSOUserFirstName          = "Mohit"
    SSOUserLastName           = "Kunjir"
  }

  account_tags = {
    Environment = "Sandbox"
    ManagedBy   = "AFT"
    Project     = "dqs-demo-prod"
  }

  change_management_parameters = {
    change_requested_by = "Mohit Kunjir"
    change_reason       = "Create dqs-prod account for dqs-demo-prod project"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
