module "slf_workload" {
  source = "../../modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "awsadmin+sandbox+slf-workload@caizin.com"
    AccountName               = "slf-workload"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "Mohit.Kunjir@caizin.com"
    SSOUserFirstName          = "Mohit"
    SSOUserLastName           = "Kunjir"
  }

  account_tags = {
    Environment = "Sandbox"
    ManagedBy   = "AFT"
    Project     = "solifi"
  }

  change_management_parameters = {
    change_requested_by = "Mohit Kunjir"
    change_reason       = "Provision Solifi workload account in Sandbox OU"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
