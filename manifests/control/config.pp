class contrail::control::config (
  $secret,
  $dns_config             = {},
  $control_config         = {},
  $control_nodemgr_config = {},
) {

  include ::contrail::vnc_api
  include ::contrail::ctrl_details
  include ::contrail::service_token
  include ::contrail::keystone

  validate_hash($dns_config)
  validate_hash($control_config)
  validate_hash($control_nodemgr_config)

  create_resources('contrail_dns_config', $dns_config)
  create_resources('contrail_control_config', $control_config)
  create_resources('contrail_control_nodemgr_config', $control_nodemgr_config)

  file { '/etc/contrail/dns/contrail-named.conf' :
    ensure  => file,
    content => template('contrail/contrail-named.conf.erb'),
  }

}
