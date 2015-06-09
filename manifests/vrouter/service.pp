class contrail::vrouter::service {

  service {'supervisor-vrouter' :
    enable => true,
    ensure => running,
  }

}
