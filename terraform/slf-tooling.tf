module "slf_tooling" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "awsadmin+sandbox+slf-tooling@caizin.com"
    AccountName               = "slf-tooling"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "Mohit.Kunjir@caizin.com"
    SSOUserFirstName          = "Mohit"
    SSOUserLastName           = "Kunjir"
  }

  account_tags = {
    Environment = "Sandbox"
    ManagedBy   = "AFT"
    Project     = "slf"
  }

  change_management_parameters = {
    change_requested_by = "Mohit Kunjir"
    change_reason       = "Provision slf-tooling account in Sandbox OU"
  }
}
