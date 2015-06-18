class contrail::ctrl_details (
  $keystone_service_token  = '',
  $keystone_auth_protocol  = 'http',
  $keystone_admin_password = 'password',
  $openstack_public_vip    = '127.0.0.1',
  $openstack_external_vip  = '127.0.0.1', 
  $amqp_ip                 = '127.0.0.1',
) {

  file { '/etc/contrail/ctrl-details' :
    ensure  => file,
    content => template('contrail/ctrl-details.erb'),
  }

}
