class contrail::webui::service {

  service {'supervisor-webui' :
    enable => true,
    ensure => running,
  }

}
