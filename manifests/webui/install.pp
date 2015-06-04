class contrail::webui::install (
  $package_name = $contrail::webui::package_name,
) {

  package { $package_name :
    ensure => installed,
  }

}
