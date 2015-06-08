class contrail::database::install (
  $package_name = $contrail::database::package_name,
) {

  package { $package_name :
    ensure => installed,
  }

}
