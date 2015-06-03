class contrail::control::install (
  $package_name = $contrail::control::package_name,
) {

  package { $package_name :
    ensure => installed,
  }

}
