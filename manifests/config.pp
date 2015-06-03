class contrail::config (
  $package_name = $contrail::params::config_package_name,
) inherits contrail::params  {

  anchor {'contrail::config::start': } ->
  class {'contrail::config::install': } ->
  class {'contrail::config::config': } ~>
  class {'contrail::config::service': }
  anchor {'contrail::config::end': }
  
}

