variable "location" {
  type        = string
  description = "the location for the deployment"
  default     = "east us"

}
variable "rg" {

  type        = string
  description = "resource group name"
  default     = "demorg"

}

variable "vnet" {

  type        = string
  description = "venet name"
  default     = "myvnet"

}

variable "nic1_Name" {}

#variable subnet1_Name {}
#variable subnet2_Name {}
#variable subnet3_Name {}

variable "nic2_Name" {}

variable "nic3_Name" {}

variable "dbvm" {
  type        = string
  description = "web vm name"
  default     = "database"

}

