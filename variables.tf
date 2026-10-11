variable "generative_ai_agent_agents" {
  description = <<EOT
Map of generative_ai_agent_agents, attributes below
Required:
    - compartment_id
Optional:
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - knowledge_base_ids
    - welcome_message
    - llm_config (block):
        - routing_llm_customization (optional, block):
            - instruction (optional)
            - llm_hyper_parameters (optional)
            - llm_selection (optional, block):
                - endpoint_id (optional)
                - llm_selection_type (required)
                - model_id (optional)
        - runtime_version (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id     = string
    defined_tags       = optional(map(string))
    description        = optional(string)
    display_name       = optional(string)
    freeform_tags      = optional(map(string))
    knowledge_base_ids = optional(list(string))
    welcome_message    = optional(string)
    llm_config = optional(object({
      routing_llm_customization = optional(object({
        instruction          = optional(string)
        llm_hyper_parameters = optional(map(string))
        llm_selection = optional(object({
          endpoint_id        = optional(string)
          llm_selection_type = string
          model_id           = optional(string)
        }))
      }))
      runtime_version = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.generative_ai_agent_agents : (
        v.llm_config == null || (v.llm_config.routing_llm_customization == null || (v.llm_config.routing_llm_customization.llm_selection == null || (contains([for v in ["CUSTOM_GEN_AI_ENDPOINT", "CUSTOM_GEN_AI_MODEL", "DEFAULT"] : lower(v)], lower(v.llm_config.routing_llm_customization.llm_selection.llm_selection_type)))))
      )
    ])
    error_message = "must be one of: \"CUSTOM_GEN_AI_ENDPOINT\", \"CUSTOM_GEN_AI_MODEL\", \"DEFAULT\""
  }
}

