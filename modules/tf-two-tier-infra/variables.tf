variable "tier_alpha" {
  type = object({
      subscription_id = string
      location = string
  })
  description = "Configuration data for the infrastructure tier ALPHA."
}

variable "tier_beta" {
  type = object({
      subscription_id = string
      location = string
  })
  description = "Configuration data for the infrastructure tier BETA."
}
