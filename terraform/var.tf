variable "subscription_id" {
  description = "subscription id"
  type        = string
}

variable "tenant_id" {
  description = "tenant id"
  type        = string
}

variable "location" {
  description = "azure location"
  type        = string
  default     = "West Europe"
}

variable "cp_tag" {
  description = "tag for caso practico 2"
  type        = map(string)
  default     = { environment = "casopractico2" }
}
