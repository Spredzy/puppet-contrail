class contrail::service_token (
  $keystone_service_token = '',
) {

  file { '/etc/contrail/service.token' :
    ensure  => file,
    content => $keystone_service_token,
  }
 
}
