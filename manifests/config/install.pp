class contrail::config::install (
  $package_name = $contrail::config::package_name,
) {

  package { $package_name :
    ensure => installed,
  }

}
