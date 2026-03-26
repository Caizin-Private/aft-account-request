module "dqs" {
  source = "../../modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "awsadmin+sandbox+dqs@caizin.com"
    AccountName               = "dqs"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "Mohit.Kunjir@caizin.com"
    SSOUserFirstName          = "Mohit"
    SSOUserLastName           = "Kunjir"
  }

  account_tags = {
    Environment = "Sandbox"
    ManagedBy   = "AFT"
    Project     = "dqs"
  }

  change_management_parameters = {
    change_requested_by = "Mohit Kunjir"
    change_reason       = "Provision DQS sandbox account for Caizin internal project"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "dqs"
}
