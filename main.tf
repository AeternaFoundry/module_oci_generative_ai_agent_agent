resource "oci_generative_ai_agent_agent" "generative_ai_agent_agents" {
  for_each = var.generative_ai_agent_agents

  compartment_id     = each.value.compartment_id
  defined_tags       = each.value.defined_tags
  description        = each.value.description
  display_name       = each.value.display_name
  freeform_tags      = each.value.freeform_tags
  knowledge_base_ids = each.value.knowledge_base_ids
  welcome_message    = each.value.welcome_message

  dynamic "llm_config" {
    for_each = each.value.llm_config != null ? [each.value.llm_config] : []
    content {
      dynamic "routing_llm_customization" {
        for_each = llm_config.value.routing_llm_customization != null ? [llm_config.value.routing_llm_customization] : []
        content {
          instruction          = routing_llm_customization.value.instruction
          llm_hyper_parameters = routing_llm_customization.value.llm_hyper_parameters
          dynamic "llm_selection" {
            for_each = routing_llm_customization.value.llm_selection != null ? [routing_llm_customization.value.llm_selection] : []
            content {
              endpoint_id        = llm_selection.value.endpoint_id
              llm_selection_type = llm_selection.value.llm_selection_type
              model_id           = llm_selection.value.model_id
            }
          }
        }
      }
      runtime_version = llm_config.value.runtime_version
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

