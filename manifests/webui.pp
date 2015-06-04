class contrail::webui (
  $package_name = $contrail::params::webui_package_name,
) inherits contrail::params {

  anchor {'contrail::webui::start': } ->
  class {'contrail::webui::install': } ->
  class {'contrail::webui::config': } ~>
  class {'contrail::webui::service': }
  anchor {'contrail::webui::end': }
  
}
