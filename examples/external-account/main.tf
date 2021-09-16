provider "aws" {
  region = "ap-southeast-1"
}

module "this" {
  # In actual use case, you have to replace the following line (line 8) with:
  #source = "github.com/traveloka/terraform-aws-iam-role.git//modules/external?ref=v2.0.2"
  source = "../../modules/external"

  role_name                  = "ThirdPartyName2" # Replace this value with the name given by 3rd party, or define it by yourself with clear and describing name
  role_path                  = "/external/security/"
  role_description           = "Role for ThirdParty"
  role_force_detach_policies = "true"
  role_max_session_duration  = "43200"

  account_id  = "123321" # Replace this value 
  external_id = "456654" # Replace this value

  product_domain = "tst"
  environment    = "production"
}

resource "aws_iam_role_policy_attachment" "this" {
  role       = module.this.role_name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"
}

