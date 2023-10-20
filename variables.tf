// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

variable "naming_prefix" {
  description = "Prefix for the provisioned resources."
  type        = string
  default     = "platform"
}

variable "environment" {
  description = "Environment in which the resource should be provisioned like dev, qa, prod etc."
  type        = string
  default     = "dev"
}

variable "environment_number" {
  description = "The environment count for the respective environment. Defaults to 000. Increments in value of 1"
  default     = "000"
}

variable "resource_number" {
  description = "The resource count for the respective resource. Defaults to 000. Increments in value of 1"
  default     = "000"
}

variable "region" {
  description = "AWS Region in which the infra needs to be provisioned"
  default     = "us-east-2"
}

variable "resource_names_map" {
  description = "A map of key to resource_name that will be used by cloudposse/label/null module to generate resource names"
  type        = map(string)
  default = {
    dns_zone = "zone"
  }
}

variable "zone_name" {
  description = "Name of the Route53 Zone to be created"
  type        = string
}

variable "comment" {
  description = "Comment to be associated with the Route53 Zone"
  type        = string
  default     = ""
}

variable "force_destroy" {
  description = "Boolean whether to be able to delete the DNS Zone"
  type        = bool
  default     = true
}

### VPC related variables
variable "vpc_id" {
  description = "The VPC ID of the VPC for private Route53 Zone."
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of custom tags to be associated with the cache cluster"
  type        = map(string)
  default     = {}
}
