# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

variable "cluster_name" {
  type = string
}

variable "cluster_location" {
  type = string
}

variable "cluster_membership_id" {
  type        = string
  description = "require to use connectgateway for private clusters, default: cluster_name"
  default     = ""
}

variable "namespace" {
  type        = string
  description = "Kubernetes namespace where resources are deployed"
}

variable "gcs_bucket" {
  type        = string
  description = "GCS bucket to mount on the notebook via GCSFuse and CSI"
}

variable "create_service_account" {
  type        = bool
  description = "Creates GCP & k8s service accounts"
  default     = true
}

variable "gcp_and_k8s_service_account" {
  type        = string
  description = "gcp service account"
}


variable "project_id" {
  type        = string
  description = "GCP project id"
}

variable "default_backend_service" {
  type    = string
  default = "proxy-public"
}

variable "members_allowlist" {
  type    = list(string)
  default = []
}

variable "add_auth" {
  type        = bool
  description = "Enable iap authentication on jupyterhub"
  default     = true
}

variable "service_name" {
  type        = string
  description = "Name of the Backend Service on GCP"
  default     = "iap-config-default"
}

variable "brand" {
  type        = string
  description = "name of the brand if there isn't already on the project. If there is already a brand for your project, please leave it blank and empty"
  default     = ""
}

variable "url_domain_addr" {
  type        = string
  description = "Domain provided by the user. If it's empty, we will create one for you."
  default     = ""
}

variable "url_domain_name" {
  type        = string
  description = "Name of the domain provided by the user. This var will only be used if url_domain_addr is not empty"
  default     = ""
}

variable "support_email" {
  type        = string
  description = "Email for users to contact with questions about their consent"
}

variable "client_id" {
  type        = string
  description = "Client ID used for enabling IAP"
  default     = ""
}

variable "client_secret" {
  type        = string
  description = "Client secret used for enabling IAP"
  default     = ""
  sensitive   = false
}