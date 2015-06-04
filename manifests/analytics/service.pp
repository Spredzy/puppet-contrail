class contrail::analytics::service {

  service {'supervisor-analytics' :
    enable => true,
    ensure => running,
  }

}
