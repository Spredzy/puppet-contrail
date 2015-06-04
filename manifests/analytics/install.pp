class contrail::analytics::install (
  $package_name = $contrail::analytics::package_name,
) {

  package { $package_name :
    ensure => installed,
  }

}
