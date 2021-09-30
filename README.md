# terraform-aws-iam-role

[![Terraform Version](https://img.shields.io/badge/Terraform%20Version->=1.0.0,<=1.0.8-blue.svg)](https://releases.hashicorp.com/terraform/)
[![Release](https://img.shields.io/github/release/traveloka/terraform-aws-iam-role.svg)](https://github.com/traveloka/terraform-aws-iam-role/releases)
[![Last Commit](https://img.shields.io/github/last-commit/traveloka/terraform-aws-iam-role.svg)](https://github.com/traveloka/terraform-aws-iam-role/commits/master)
[![Issues](https://img.shields.io/github/issues/traveloka/terraform-aws-iam-role.svg)](https://github.com/traveloka/terraform-aws-iam-role/issues)
[![Pull Requests](https://img.shields.io/github/issues-pr/traveloka/terraform-aws-iam-role.svg)](https://github.com/traveloka/terraform-aws-iam-role/pulls)
[![License](https://img.shields.io/github/license/traveloka/terraform-aws-iam-role.svg)](https://github.com/traveloka/terraform-aws-iam-role/blob/master/LICENSE)
![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.png?v=103)

Terraform module to create AWS IAM Role. 
Currently supported type of Roles are:
1. Role for AWS Service
2. Role for IAM User
3. Role for External AWS Account
4. Role for Instance Profile
5. Role for Lambda

## Table of Content

* [terraform-aws-iam-role](#terraform-aws-iam-role)
   * [Table of Content](#table-of-content)
   * [Usage](#usage)
   * [Modules](#modules)
   * [Examples](#examples)
   * [Tests](#tests)
   * [Terraform Version](#terraform-version)
   * [Requirements](#requirements)
   * [Providers](#providers)
   * [Modules](#modules-1)
   * [Resources](#resources)
   * [Inputs](#inputs)
   * [Outputs](#outputs)
   * [Authors](#authors)
   * [License](#license)


## Usage
This module will only create an IAM Role and its Trust Relationships policy document. You need to attach your own Permission policy document outside the module.

To use a particular type of supported role, you can go into `modules` folder and read `README.md` at each subfolder for more detailed information.

To understand better on how to implement this module, you can go into `examples` folder and try them.


## Modules
* [AWS Service](https://github.com/traveloka/terraform-aws-iam-role/tree/master/modules/service)
* [IAM User](https://github.com/traveloka/terraform-aws-iam-role/tree/master/modules/user)
* [External AWS Account](https://github.com/traveloka/terraform-aws-iam-role/tree/master/modules/external)
* [Instance Profile](https://github.com/traveloka/terraform-aws-iam-role/tree/master/modules/instance)
* [Lambda](https://github.com/traveloka/terraform-aws-iam-role/tree/master/modules/lambda)


## Examples
* [Service Role for Config](https://github.com/traveloka/terraform-aws-iam-role/tree/master/examples/aws-service-config)
* [IAM Role for User](https://github.com/traveloka/terraform-aws-iam-role/tree/master/examples/user-iam)
* [IAM Role for 3rd Party AWS Account](https://github.com/traveloka/terraform-aws-iam-role/tree/master/examples/external-account)
* [IAM Role for Instance Profile](https://github.com/traveloka/terraform-aws-iam-role/tree/master/examples/instance-profile)
* [IAM Role for Lambda](https://github.com/traveloka/terraform-aws-iam-role/tree/master/examples/lambda-role)


## Tests
To run the test:
1. Install Ruby with version specified in the [Gemfile](https://github.com/traveloka/terraform-aws-iam-role/tree/master/Gemfile).
2. Install bundler: `gem install bundler`
3. Install gems: `bundle install`
4. Run test from the root of the repository: `bundle exec kitchen test`


## Terraform Version
This module was created using Terraform 0.11.4. 
The latest stable version of Terraform which this module tested working is Terraform 1.0.8 on 30/09/2021


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Will be used in Environment tag | `string` | n/a | yes |
| <a name="input_product_domain"></a> [product\_domain](#input\_product\_domain) | Abbreviation of the product domain the created resources belong to | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region from which this module will be executed | `string` | `"ap-southeast-1"` | no |
| <a name="input_role_assume_policy"></a> [role\_assume\_policy](#input\_role\_assume\_policy) | IAM policy document that grants an entity permission to assume the role in JSON format. | `string` | n/a | yes |
| <a name="input_role_description"></a> [role\_description](#input\_role\_description) | The description of the role. | `string` | n/a | yes |
| <a name="input_role_force_detach_policies"></a> [role\_force\_detach\_policies](#input\_role\_force\_detach\_policies) | Specifies to force detaching any policies the role has before destroying it. | `bool` | `false` | no |
| <a name="input_role_max_session_duration"></a> [role\_max\_session\_duration](#input\_role\_max\_session\_duration) | The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours. | `number` | `3600` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The name of the role. It will forces new resource on change. | `string` | n/a | yes |
| <a name="input_role_path"></a> [role\_path](#input\_role\_path) | The path to the role. See https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html for more information. | `string` | `"/"` | no |
| <a name="input_role_permission_boundary"></a> [role\_permission\_boundary](#input\_role\_permission\_boundary) | IAM policy ARN limiting the maximum access this role can have | `string` | `""` | no |
| <a name="input_role_tags"></a> [role\_tags](#input\_role\_tags) | Additional tags to be put on iam role | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_account_id"></a> [aws\_account\_id](#output\_aws\_account\_id) | The AWS Account ID number of the account that owns or contains the calling entity. |
| <a name="output_aws_caller_arn"></a> [aws\_caller\_arn](#output\_aws\_caller\_arn) | The AWS ARN associated with the calling entity. |
| <a name="output_aws_caller_user_id"></a> [aws\_caller\_user\_id](#output\_aws\_caller\_user\_id) | The unique identifier of the calling entity. |
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | The Amazon Resource Name (ARN) specifying the role. |
| <a name="output_role_create_date"></a> [role\_create\_date](#output\_role\_create\_date) | The creation date of the IAM role. |
| <a name="output_role_description"></a> [role\_description](#output\_role\_description) | The description of the role. |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | The name of the role. |
| <a name="output_role_unique_id"></a> [role\_unique\_id](#output\_role\_unique\_id) | The stable and unique string identifying the role. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors
* [Rafi Kurnia Putra](https://github.com/rafikurnia)


## License
Apache 2 Licensed. See LICENSE for full details.
