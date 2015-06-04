class contrail::analytics (
  $package_name = $contrail::params::analytics_package_name,
) inherits contrail::params {

  anchor {'contrail::analytics::start': } ->
  class {'contrail::analytics::install': } ->
  class {'contrail::analytics::config': } ~>
  class {'contrail::analytics::service': }
  anchor {'contrail::analytics::end': }
  
}
