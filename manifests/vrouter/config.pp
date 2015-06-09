class contrail::vrouter::config (
  $vhost_ip               = '127.0.0.1',
  $discovery_ip           = '127.0.0.1',
  $device                 = 'eth0',
  $compute_device         = 'eth0',
  $mask                   = '24',
  $vgw_public_subnet      = undef,
  $vgw_interface          = undef,
  $macaddr                = $::macaddress,
  $vrouter_agent_config   = {},
  $vrouter_nodemgr_config = {},
) {

  include ::contrail::vrouter::provision_vrouter
  include ::contrail::vnc_api
  include ::contrail::ctrl_details
  include ::contrail::service_token

  validate_hash($vrouter_agent_config)
  validate_hash($vrouter_nodemgr_config)

  create_resources('contrail_vrouter_agent_config', $vrouter_agent_config)
  create_resources('contrail_vrouter_nodemgr_config', $vrouter_nodemgr_config)

  file { '/etc/contrail/agent_param' :
    ensure  => file,
    content => template('contrail/vrouter/agent_param.erb'),
  }

  file { '/etc/contrail/default_pmac' :
    ensure  => file,
    content => $macaddr,
  }

  file { '/etc/contrail/vrouter_nodemgr_param' :
    ensure  => file,
    content => "DISCOVERY=${discovery_ip}",
  }

  exec { '/bin/python /opt/contrail/utils/update_dev_net_config_files.py' :
    command => "/bin/python /opt/contrail/utils/update_dev_net_config_files.py \
                 --vhost_ip $vhost_ip \
                 --dev $device \
                 --compute_dev $device \
                 --netmask $compute_device \
                 --gateway $gateway \
                 --cidr ${vhost_oip}/${mask} \
                 --mac $macaddr"
  }

}
