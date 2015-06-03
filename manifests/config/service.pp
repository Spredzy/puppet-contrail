class contrail::config::service {

  service {'supervisor-config' :
    enable => true,
    ensure => running,
  }

}

