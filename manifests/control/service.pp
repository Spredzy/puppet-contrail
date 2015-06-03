class contrail::control::service {

  service {'supervisor-control' :
    enable => true,
    ensure => running,
  }

}
