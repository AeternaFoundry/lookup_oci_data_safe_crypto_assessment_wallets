variable "data_safe_crypto_assessment_wallets_lookup" {
  description = <<EOT
Map of data_safe_crypto_assessment_wallets_lookup, attributes below
Required:
    - compartment_id
Optional:
    - access_level
    - assessment_id
    - assessment_type
    - compartment_id_in_subtree
    - feature
    - target_id
    - target_ids
    - wallet_encryption_algorithm
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id              = string
    access_level                = optional(string)
    assessment_id               = optional(string)
    assessment_type             = optional(string)
    compartment_id_in_subtree   = optional(bool)
    feature                     = optional(string)
    target_id                   = optional(string)
    target_ids                  = optional(list(string))
    wallet_encryption_algorithm = optional(list(string))
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

