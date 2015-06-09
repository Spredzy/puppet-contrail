class contrail::vrouter (
  $package_name = $contrail::params::vrouter_package_name,
) inherits contrail::params {

  anchor {'contrail::vrouter::start': } ->
  class {'contrail::vrouter::install': } ->
  class {'contrail::vrouter::config': } ~>
  class {'contrail::vrouter::service': }
  anchor {'contrail::vrouter::end': }
  
}
