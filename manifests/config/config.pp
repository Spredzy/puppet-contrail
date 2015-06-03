class contrail::config::config (
  $api_config              = {},
  $config_nodemgr_config   = {},
  $discovery_config        = {},
  $keystone_auth_config    = {},
  $schema_config           = {},
  $device_manager_config   = {},
  $svc_monitor_config      = {},
  $basicauthusers_property = [],
  $ifmap_server_log_path   = 'irond.log',
) {

  validate_hash($api_config)
  validate_hash($config_nodemgr_config)
  validate_hash($discovery_config)
  validate_hash($keystone_auth_config)
  validate_hash($schema_config)
  validate_hash($device_manager_config)
  validate_hash($svc_monitor_config)

  validate_array($basicauthusers_property)

  create_resources('contrail_api_config', $api_config)
  create_resources('contrail_config_nodemgr_config', $config_nodemgr_config)
  create_resources('contrail_discovery_config', $discovery_config)
  create_resources('contrail_keystone_auth_config', $keystone_auth_config)
  create_resources('contrail_schema_config', $schema_config)
  create_resources('contrail_device_manager_config', $device_manager_config)
  create_resources('contrail_svc_monitor_config', $svc_monitor_config)

  file { '/etc/ifmap-server/basicauthusers.properties' :
    ensure  => file,
    content => template('contrail/config/basicauthusers.properties.erb'),
  }

  file {'/etc/ifmap-server/log4j.properties' :
    ensure => file,
    content => template('contrail/config/log4j.properties.erb'),
  }

}

