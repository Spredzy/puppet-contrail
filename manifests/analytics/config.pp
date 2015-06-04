class contrail::analytics::config (
  $analytics_api_config     = {},
  $collector_config         = {},
  $query_engine_config      = {},
  $snmp_collector_config    = {},
  $analytics_nodemgr_config = {},
  $topology_config          = {},
) {

  validate_hash($analytics_api_config)
  validate_hash($collector_config)
  validate_hash($query_engine_config)
  validate_hash($snmp_collector_config)
  validate_hash($analytics_nodemgr_config)
  validate_hash($topology_config)

  create_resources('contrail_analytics_api_config', $analytics_api_config)
  create_resources('contrail_collector_config', $collector_config)
  create_resources('contrail_query_engine_config', $query_engine_config)
  create_resources('contrail_snmp_collector_config', $snmp_collector_config)
  create_resources('contrail_analytics_nodemgr_config', $analytics_nodemgr_config)
  create_resources('contrail_topology_config', $topology_config)

}
