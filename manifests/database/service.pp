class contrail::database::service {

  service {'supervisor-database' :
    enable => true,
    ensure => running,
  }

}
