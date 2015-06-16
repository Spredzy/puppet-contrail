class contrail::ctrl_details (
  keystone_admin_password = 'admin',
  keystone_auth_protocol  = 'http',
  rabbitmq_server         = '127.0.0.1',
  controller_ip           = '127.0.0.1',  
  compute_ip              = '127.0.0.1',  
  external_vip            = '127.0.0.1',
  internal_vip            = '127.0.0.1',
) {

  file { '/etc/contrail/ctrl-details' :
    ensure  => file,
    content => template('contrail/ctrl-details.erb'), 
  }

}
