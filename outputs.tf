output "generative_ai_agent_agents_id" {
  description = "Map of id values across all generative_ai_agent_agents, keyed the same as var.generative_ai_agent_agents except keys with no id are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent.generative_ai_agent_agents : k => v.id if v.id != null && length(v.id) > 0 }
}
output "generative_ai_agent_agents_compartment_id" {
  description = "Map of compartment_id values across all generative_ai_agent_agents, keyed the same as var.generative_ai_agent_agents except keys with no compartment_id are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent.generative_ai_agent_agents : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "generative_ai_agent_agents_defined_tags" {
  description = "Map of defined_tags values across all generative_ai_agent_agents, keyed the same as var.generative_ai_agent_agents except keys with no defined_tags are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent.generative_ai_agent_agents : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "generative_ai_agent_agents_description" {
  description = "Map of description values across all generative_ai_agent_agents, keyed the same as var.generative_ai_agent_agents except keys with no description are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent.generative_ai_agent_agents : k => v.description if v.description != null && length(v.description) > 0 }
}
output "generative_ai_agent_agents_display_name" {
  description = "Map of display_name values across all generative_ai_agent_agents, keyed the same as var.generative_ai_agent_agents except keys with no display_name are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent.generative_ai_agent_agents : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "generative_ai_agent_agents_freeform_tags" {
  description = "Map of freeform_tags values across all generative_ai_agent_agents, keyed the same as var.generative_ai_agent_agents except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent.generative_ai_agent_agents : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "generative_ai_agent_agents_knowledge_base_ids" {
  description = "Map of knowledge_base_ids values across all generative_ai_agent_agents, keyed the same as var.generative_ai_agent_agents except keys with no knowledge_base_ids are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent.generative_ai_agent_agents : k => v.knowledge_base_ids if v.knowledge_base_ids != null && length(v.knowledge_base_ids) > 0 }
}
output "generative_ai_agent_agents_lifecycle_details" {
  description = "Map of lifecycle_details values across all generative_ai_agent_agents, keyed the same as var.generative_ai_agent_agents except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent.generative_ai_agent_agents : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "generative_ai_agent_agents_llm_config" {
  description = "Map of llm_config values across all generative_ai_agent_agents, keyed the same as var.generative_ai_agent_agents except keys with no llm_config are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent.generative_ai_agent_agents : k => one(v.llm_config) if v.llm_config != null && length(v.llm_config) > 0 }
}
output "generative_ai_agent_agents_state" {
  description = "Map of state values across all generative_ai_agent_agents, keyed the same as var.generative_ai_agent_agents except keys with no state are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent.generative_ai_agent_agents : k => v.state if v.state != null && length(v.state) > 0 }
}
output "generative_ai_agent_agents_system_tags" {
  description = "Map of system_tags values across all generative_ai_agent_agents, keyed the same as var.generative_ai_agent_agents except keys with no system_tags are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent.generative_ai_agent_agents : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "generative_ai_agent_agents_time_created" {
  description = "Map of time_created values across all generative_ai_agent_agents, keyed the same as var.generative_ai_agent_agents except keys with no time_created are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent.generative_ai_agent_agents : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "generative_ai_agent_agents_time_updated" {
  description = "Map of time_updated values across all generative_ai_agent_agents, keyed the same as var.generative_ai_agent_agents except keys with no time_updated are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent.generative_ai_agent_agents : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "generative_ai_agent_agents_welcome_message" {
  description = "Map of welcome_message values across all generative_ai_agent_agents, keyed the same as var.generative_ai_agent_agents except keys with no welcome_message are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent.generative_ai_agent_agents : k => v.welcome_message if v.welcome_message != null && length(v.welcome_message) > 0 }
}

