variable "subscription_id" {
  description = "Azure Subscription"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "West Europe"
}

variable "vm_count" {
  description = "WebserverNummer"
  type        = number
  default     = 3
}