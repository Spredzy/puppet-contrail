class contrail::vrouter::install (
  $package_name = $contrail::vrouter::package_name,
) {

  package { $package_name :
    ensure => installed,
  }

  file { '/opt/contrail/utils/update_dev_net_config_files.py' :
    ensure => file,
    source => 'puppet:///modules/contrail/vrouter/update_dev_net_config_files.py',
  }

}
