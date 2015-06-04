class contrail::webui::config (
  $openstack_vip             = '127.0.0.1',
  $contrail_vip              = '127.0.0.1',
  $cassandra_ip              = ['127.0.0.1'],
  $redis_vip                 = '127.0.0.1',
  $contrail_webui_http_port  = '8080',
  $contrail_webui_https_port = '8143',
) {

  file { "/etc/contrail/config.global.js" :
    ensure  => file,
    content => template('contrail/config.global.js.erb'),
  }   

}
