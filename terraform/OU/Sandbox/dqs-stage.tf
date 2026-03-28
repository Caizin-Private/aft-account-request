module "dqs_stage" {
  source = "../../modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "awsadmin+sandbox+dqs-stage@caizin.com"
    AccountName               = "dqs-stage"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "Mohit.Kunjir@caizin.com"
    SSOUserFirstName          = "Mohit"
    SSOUserLastName           = "Kunjir"
  }

  account_tags = {
    Environment = "Sandbox"
    ManagedBy   = "AFT"
    Project     = "dqs-demo"
  }

  change_management_parameters = {
    change_requested_by = "Mohit Kunjir"
    change_reason       = "Create dqs-stage account for dqs-demo project"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
